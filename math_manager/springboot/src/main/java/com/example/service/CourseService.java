package com.example.service;

import cn.hutool.core.date.DateUtil;
import cn.hutool.core.util.ObjectUtil;
import com.example.common.enums.RecommendEnum;
import com.example.common.enums.ResultCodeEnum;
import com.example.entity.*;
import com.example.exception.CustomException;
import com.example.mapper.CommentMapper;
import com.example.mapper.CourseMapper;
import com.example.mapper.OrdersMapper;
import com.example.mapper.UserMapper;
import com.example.utils.TokenUtils;
import com.example.utils.UserCF;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.sun.org.apache.xpath.internal.operations.Or;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import java.util.*;
import java.util.stream.Collectors;

/**
 * 课程信息表业务处理
 **/
@Service
public class CourseService {

    @Resource
    private CourseMapper courseMapper;
    @Resource
    private OrdersMapper ordersMapper;
    @Resource
    private CommentMapper commentMapper;
    @Resource
    private UserMapper userMapper;



    /**
     * 新增
     */
    public void add(Course course) {
        if (ObjectUtil.isNotEmpty(course.getRecommend()) && RecommendEnum.YES.status.equals(course.getRecommend())) {
            // 做一下校验
            Course recommend = courseMapper.getRecommend(course.getType());
            if (ObjectUtil.isNotEmpty(recommend)) {
                throw new CustomException(ResultCodeEnum.RECOMMEND_ALREADY_ERROR);
            }
        }
        course.setTime(DateUtil.format(new Date(), "yyyy-MM-dd"));
        courseMapper.insert(course);
    }

    /**
     * 删除
     */
    public void deleteById(Integer id) {
        courseMapper.deleteById(id);
    }

    /**
     * 批量删除
     */
    public void deleteBatch(List<Integer> ids) {
        for (Integer id : ids) {
            courseMapper.deleteById(id);
        }
    }

    /**
     * 修改
     */
    public void updateById(Course course) {
        if (ObjectUtil.isNotEmpty(course.getRecommend()) && RecommendEnum.YES.status.equals(course.getRecommend())) {
            // 做一下校验
            Course recommend = courseMapper.getRecommend(course.getType());
            if (ObjectUtil.isNotEmpty(recommend) && !recommend.getId().equals(course.getId())) {
                throw new CustomException(ResultCodeEnum.RECOMMEND_ALREADY_ERROR);
            }
        }
        courseMapper.updateById(course);
    }

    /**
     * 根据ID查询
     */
    public Course selectById(Integer id) {
        Course course = courseMapper.selectById(id);
        // 把敏感数据干掉
        Account currentUser = TokenUtils.getCurrentUser();
        Orders orders = new Orders();
        orders.setUserId(currentUser.getId());
        orders.setCourseId(id);
        List<Orders> ordersList = ordersMapper.selectAll(orders);
        if (ObjectUtil.isEmpty(ordersList) && 0 != course.getPrice()) {
            course.setFile("");
            course.setVideo("");
        }
        return course;
    }

    /**
     * 查询所有
     */
    public List<Course> selectAll(Course course) {
        return courseMapper.selectAll(course);
    }

    /**
     * 分页查询
     */
    public PageInfo<Course> selectPage(Course course, Integer pageNum, Integer pageSize) {
        PageHelper.startPage(pageNum, pageSize);
        List<Course> list = courseMapper.selectAll(course);
        return PageInfo.of(list);
    }

    public Course getRecommend(String type) {
        return courseMapper.getRecommend(type);
    }

    public List<Course> selectTop8(String type) {
        return courseMapper.selectTop8(type);
    }

    public List<Course> recom() {
        Account currentUser = TokenUtils.getCurrentUser();
        if (ObjectUtil.isEmpty(currentUser)) {
            // 没有用户登录
            return new ArrayList<>();
        }
        //用户的行为：订单，评论，兑换
        // 1. 获取所有的订单信息
        List<Orders> allOrders = ordersMapper.selectAllOKOrders();
        // 4. 获取所有的评论信息
        List<Comment> allComments = commentMapper.selectAll(null);
        // 5. 获取所有的用户信息
        List<User> allUsers = userMapper.selectAll(null);
        // 6. 获取所有的商品信息
        List<Course> allCourse = courseMapper.selectAll(null);

        // 定义一个存储每个课程和每个用户关系的List
        List<RelateDTO> data = new ArrayList<>();
        // 定义一个存储最后返回给前端的商品List
        List<Course> result = new ArrayList<>();

        // 开始计算每个商品和每个用户之间的关系数据
        for (Course course : allCourse) {
            Integer courseId = course.getId();
            for (User user : allUsers) {
                Integer userId = user.getId();
                int index = 1;

                // 3. 判断该用户有没有对该课程下过单（已完成的订单），订单的权重我们给 3
                Optional<Orders> ordersOptional = allOrders.stream().filter(x -> x.getCourseId().equals(courseId) && x.getUserId().equals(userId)).findFirst();
                if (ordersOptional.isPresent()) {
                    index += 3;
                }
                // 4. 判断该用户有没有对该课程评论过，评论的权重我们给 2
                Optional<Comment> commentOptional = allComments.stream().filter(x -> x.getCourseId().equals(courseId) && x.getUserId().equals(userId)).findFirst();
                if (commentOptional.isPresent()) {
                    index += 2;
                }
                if (index > 1) {
                    RelateDTO relateDTO = new RelateDTO(userId, courseId, index);
                    data.add(relateDTO);
                }
            }
        }
        // 数据准备结束后，就把这些数据一起喂给这个推荐算法
        List<Integer> courserIds = UserCF.recommend(currentUser.getId(), data);
        // 把商品id转换成商品
        List<Course> recommendResult = courserIds.stream().map(courseId -> allCourse.stream()
                        .filter(x -> x.getId().equals(courseId)).findFirst().orElse(null))
                .limit(10).collect(Collectors.toList());

        //        if (CollectionUtil.isEmpty(recommendResult)) {
        //            // 随机给它推荐10个
        //            return getRandomGoods(10);
        //        }
        //        if (recommendResult.size() < 10) {
        //            int num = 10 - recommendResult.size();
        //            List<Goods> list = getRandomGoods(num);
        //            result.addAll(list);
        //        }
        return recommendResult;
    }

    private List<Course> getRandomGoods(int num) {
        List<Course> list = new ArrayList<>(num);
        List<Course> course = courseMapper.selectAll(null);
        for (int i = 0; i < num; i++) {
            int index = new Random().nextInt(course.size());
            list.add(course.get(index));
        }
        return list;
    }
}