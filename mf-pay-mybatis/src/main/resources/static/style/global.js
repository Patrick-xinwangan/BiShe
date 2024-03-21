/*
* 2007-2013 PrestaShop
*
* NOTICE OF LICENSE
*
* This source file is subject to the Academic Free License (AFL 3.0)
* that is bundled with this package in the file LICENSE.txt.
* It is also available through the world-wide-web at this URL:
* http://opensource.org/licenses/afl-3.0.php
* If you did not receive a copy of the license and are unable to
* obtain it through the world-wide-web, please send an email
* to license@prestashop.com so we can send you a copy immediately.
*
* DISCLAIMER
*
* Do not edit or add to this file if you wish to upgrade PrestaShop to newer
* versions in the future. If you wish to customize PrestaShop for your
* needs please refer to http://www.prestashop.com for more information.
*
*  @author PrestaShop SA <contact@prestashop.com>
*  @copyright  2007-2013 PrestaShop SA
*  @license    http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
*  International Registered Trademark & Property of PrestaShop SA
*/

jQuery(function ($) {
    "use strict";
    var pageBody = $("body");

    function isTouchDevice() {
        return typeof window.ontouchstart != "undefined" ? true : false
    }
    if (isTouchDevice()) pageBody.addClass("touch");
    else pageBody.addClass("notouch")
});

jQuery(function ($) {
    "use strict";
	var productCarousel = $(".product-carousel"),
	container = $(".container");	
	if (productCarousel.length > 0) productCarousel.each(function () {
	var items = 3,
	    itemsDesktop = 3,
	    itemsDesktopSmall = 2,
	    itemsTablet = 2,
	    itemsMobile = 1;
	if ($("body").hasClass("noresponsive")) var items = 3,
	itemsDesktop = 3, itemsDesktopSmall = 3, itemsTablet = 3, itemsMobile = 3;
	else if ($(this).closest("section.col-md-8.col-lg-9").length > 0) var items = 3,
	itemsDesktop = 3, itemsDesktopSmall = 2, itemsTablet = 2, itemsMobile = 1;
	else if ($(this).closest("section.col-lg-9").length > 0) var items = 3,
	itemsDesktop = 3, itemsDesktopSmall = 2, itemsTablet = 2, itemsMobile = 1;
	else if ($(this).closest("section.col-sm-12.col-lg-6").length > 0) var items = 2,
	itemsDesktop = 2, itemsDesktopSmall = 3, itemsTablet = 2, itemsMobile = 1;
	else if ($(this).closest("section.col-lg-6").length > 0) var items = 2,
	itemsDesktop = 2, itemsDesktopSmall = 2, itemsTablet = 2, itemsMobile = 1;
	else if ($(this).closest("section.col-sm-12.col-lg-3").length > 0) var items = 1,
	itemsDesktop = 1, itemsDesktopSmall = 3, itemsTablet = 2, itemsMobile = 1;
	else if ($(this).closest("section.col-lg-3").length > 0) var items = 1,
	itemsDesktop = 1, itemsDesktopSmall = 2, itemsTablet = 2, itemsMobile = 1;
	$(this).owlCarousel({
	    items: items,
	    itemsDesktop: [1199, itemsDesktop],
	    itemsDesktopSmall: [991, itemsDesktopSmall],
	    itemsTablet: [768, itemsTablet],
	    itemsTabletSmall: false,
	    itemsMobile: [480, itemsMobile],
	    navigation: true,
	    pagination: false,
	    rewindNav: true,
	    navigationText: ["", ""],
	    scrollPerPage: true,
	    slideSpeed: 500,
	    beforeInit: function rtlSwapItems(el) {
	        if ($("body").hasClass("rtl")) el.children().each(function (i, e) {
	            $(e).parent().prepend($(e))
	        })
	    },
	    afterInit: function afterInit(el) {
	        if ($("body").hasClass("rtl")) this.jumpTo(1000)
	    }
	})
	});
});
jQuery(function ($) {
    "use strict";
	var brandCarousel = $(".botcontent-carousel"),
	container = $(".container");	
	if (brandCarousel.length > 0) brandCarousel.each(function () {
	var items = 1,
	    itemsDesktop = 1,
	    itemsDesktopSmall = 1,
	    itemsTablet = 1,
	    itemsMobile = 1;
	if ($("body").hasClass("noresponsive")) var items = 1,
	itemsDesktop = 1, itemsDesktopSmall = 1, itemsTablet = 1, itemsMobile = 1;
	else if ($(this).closest("section.col-md-8.col-lg-9").length > 0) var items = 1,
	itemsDesktop = 1, itemsDesktopSmall = 1, itemsTablet = 1, itemsMobile = 1;
	else if ($(this).closest("section.col-lg-9").length > 0) var items = 1,
	itemsDesktop = 1, itemsDesktopSmall = 1, itemsTablet = 1, itemsMobile = 1;
	else if ($(this).closest("section.col-sm-12.col-lg-6").length > 0) var items = 1,
	itemsDesktop = 1, itemsDesktopSmall = 1, itemsTablet = 1, itemsMobile = 1;
	else if ($(this).closest("section.col-lg-6").length > 0) var items = 1,
	itemsDesktop = 1, itemsDesktopSmall = 1, itemsTablet = 1, itemsMobile = 1;
	else if ($(this).closest("section.col-sm-12.col-lg-3").length > 0) var items = 1,
	itemsDesktop = 1, itemsDesktopSmall = 1, itemsTablet = 1, itemsMobile = 1;
	else if ($(this).closest("section.col-lg-3").length > 0) var items = 1,
	itemsDesktop = 1, itemsDesktopSmall = 1, itemsTablet = 1, itemsMobile = 1;
	$(this).owlCarousel({
	    items: items,
	    itemsDesktop: [1199, itemsDesktop],
	    itemsDesktopSmall: [991, itemsDesktopSmall],
	    itemsTablet: [768, itemsTablet],
	    itemsTabletSmall: [618, 1],
	    itemsMobile: [480, itemsMobile],
	    navigation: true,
	    pagination: true,
	    rewindNav: true,
	    navigationText: ["", ""],
	    scrollPerPage: true,
	    slideSpeed: 500,
	    beforeInit: function rtlSwapItems(el) {
	        if ($("body").hasClass("rtl")) el.children().each(function (i, e) {
	            $(e).parent().prepend($(e))
	        })
	    },
	    afterInit: function afterInit(el) {
	        if ($("body").hasClass("rtl")) this.jumpTo(1000)
	    }
	})
	});
});	
jQuery(function ($) {
    "use strict";
	var productCarousel = $(".product-carousel2"),
	container = $(".container");	
	if (productCarousel.length > 0) productCarousel.each(function () {
	var items = 4,
	    itemsDesktop = 4,
	    itemsDesktopSmall = 3,
	    itemsTablet = 2,
	    itemsMobile = 1;
	if ($("body").hasClass("noresponsive")) var items = 4,
	itemsDesktop = 4, itemsDesktopSmall = 4, itemsTablet = 4, itemsMobile = 4;
	else if ($(this).closest("section.col-md-8.col-lg-9").length > 0) var items = 2,
	itemsDesktop = 2, itemsDesktopSmall = 1, itemsTablet = 1, itemsMobile = 1;
	else if ($(this).closest("section.col-lg-9").length > 0) var items = 2,
	itemsDesktop = 2, itemsDesktopSmall = 1, itemsTablet = 1, itemsMobile = 1;
	else if ($(this).closest("section.col-sm-12.col-lg-6").length > 0) var items = 2,
	itemsDesktop = 2, itemsDesktopSmall = 1, itemsTablet = 1, itemsMobile = 1;
	else if ($(this).closest("section.col-lg-6").length > 0) var items = 2,
	itemsDesktop = 2, itemsDesktopSmall = 1, itemsTablet = 1, itemsMobile = 1;
	else if ($(this).closest("section.col-sm-12.col-lg-3").length > 0) var items = 1,
	itemsDesktop = 1, itemsDesktopSmall = 1, itemsTablet = 1, itemsMobile = 1;
	else if ($(this).closest("section.col-lg-3").length > 0) var items = 1,
	itemsDesktop = 1, itemsDesktopSmall = 1, itemsTablet = 1, itemsMobile = 1;
	$(this).owlCarousel({
	    items: items,
	    itemsDesktop: [1199, itemsDesktop],
	    itemsDesktopSmall: [991, itemsDesktopSmall],
	    itemsTablet: [768, itemsTablet],
	    itemsTabletSmall: false,
	    itemsMobile: [480, itemsMobile],
	    navigation: true,
	    pagination: false,
	    rewindNav: true,
	    navigationText: ["", ""],
	    scrollPerPage: true,
	    slideSpeed: 500,
	    beforeInit: function rtlSwapItems(el) {
	        if ($("body").hasClass("rtl")) el.children().each(function (i, e) {
	            $(e).parent().prepend($(e))
	        })
	    },
	    afterInit: function afterInit(el) {
	        if ($("body").hasClass("rtl")) this.jumpTo(1000)
	    }
	})
	});
});
jQuery(function ($) {
    "use strict";
	var brandCarousel = $(".brand-carousel"),
	container = $(".container");	
	if (brandCarousel.length > 0) brandCarousel.each(function () {
	var items = 6,
	    itemsDesktop = 5,
	    itemsDesktopSmall = 3,
	    itemsTablet = 3,
	    itemsMobile = 1;
	if ($("body").hasClass("noresponsive")) var items = 6,
	itemsDesktop = 6, itemsDesktopSmall = 6, itemsTablet = 6, itemsMobile = 6;
	else if ($(this).closest("section.col-md-8.col-lg-9").length > 0) var items = 3,
	itemsDesktop = 3, itemsDesktopSmall = 3, itemsTablet = 3, itemsMobile = 1;
	else if ($(this).closest("section.col-lg-9").length > 0) var items = 3,
	itemsDesktop = 3, itemsDesktopSmall = 3, itemsTablet = 3, itemsMobile = 1;
	else if ($(this).closest("section.col-sm-12.col-lg-6").length > 0) var items = 2,
	itemsDesktop = 2, itemsDesktopSmall = 4, itemsTablet = 3, itemsMobile = 1;
	else if ($(this).closest("section.col-lg-6").length > 0) var items = 2,
	itemsDesktop = 2, itemsDesktopSmall = 3, itemsTablet = 3, itemsMobile = 1;
	else if ($(this).closest("section.col-sm-12.col-lg-3").length > 0) var items = 1,
	itemsDesktop = 1, itemsDesktopSmall = 4, itemsTablet = 3, itemsMobile = 1;
	else if ($(this).closest("section.col-lg-3").length > 0) var items = 1,
	itemsDesktop = 1, itemsDesktopSmall = 3, itemsTablet = 3, itemsMobile = 1;
	$(this).owlCarousel({
	    items: items,
	    itemsDesktop: [1199, itemsDesktop],
	    itemsDesktopSmall: [991, itemsDesktopSmall],
	    itemsTablet: [768, itemsTablet],
	    itemsTabletSmall: [618, 2],
	    itemsMobile: [480, itemsMobile],
	    navigation: true,
	    pagination: false,
	    rewindNav: true,
	    navigationText: ["", ""],
	    scrollPerPage: true,
	    slideSpeed: 500,
	    beforeInit: function rtlSwapItems(el) {
	        if ($("body").hasClass("rtl")) el.children().each(function (i, e) {
	            $(e).parent().prepend($(e))
	        })
	    },
	    afterInit: function afterInit(el) {
	        if ($("body").hasClass("rtl")) this.jumpTo(1000)
	    }
	})
	});
});	
jQuery(function ($) {
    "use strict";
	var productCarousel = $(".thumb-carousel"),
	container = $(".container");	
	if (productCarousel.length > 0) productCarousel.each(function () {
	var items = 3,
	    itemsDesktop = 3,
	    itemsDesktopSmall = 2,
	    itemsTablet = 2,
	    itemsMobile = 1;
	if ($("body").hasClass("noresponsive")) var items = 3,
	itemsDesktop = 3, itemsDesktopSmall = 3, itemsTablet = 3, itemsMobile = 3;
	else if ($(this).closest("section.col-md-8.col-lg-9").length > 0) var items = 3,
	itemsDesktop = 3, itemsDesktopSmall = 2, itemsTablet = 2, itemsMobile = 1;
	else if ($(this).closest("section.col-lg-9").length > 0) var items = 3,
	itemsDesktop = 3, itemsDesktopSmall = 2, itemsTablet = 2, itemsMobile = 1;
	else if ($(this).closest("section.col-sm-12.col-lg-6").length > 0) var items = 2,
	itemsDesktop = 2, itemsDesktopSmall = 3, itemsTablet = 2, itemsMobile = 1;
	else if ($(this).closest("section.col-lg-6").length > 0) var items = 2,
	itemsDesktop = 2, itemsDesktopSmall = 2, itemsTablet = 2, itemsMobile = 1;
	else if ($(this).closest("section.col-sm-12.col-lg-3").length > 0) var items = 1,
	itemsDesktop = 1, itemsDesktopSmall = 3, itemsTablet = 2, itemsMobile = 1;
	else if ($(this).closest("section.col-lg-3").length > 0) var items = 1,
	itemsDesktop = 1, itemsDesktopSmall = 2, itemsTablet = 2, itemsMobile = 1;
	$(this).owlCarousel({
	    items: items,
	    itemsDesktop: [1199, itemsDesktop],
	    itemsDesktopSmall: [980, itemsDesktopSmall],
	    itemsTablet: [768, itemsTablet],
	    itemsTabletSmall: false,
	    itemsMobile: [480, itemsMobile],
	    navigation: true,
	    pagination: false,
	    rewindNav: true,
	    navigationText: ["", ""],
	    scrollPerPage: true,
	    slideSpeed: 500,
	    beforeInit: function rtlSwapItems(el) {
	        if ($("body").hasClass("rtl")) el.children().each(function (i, e) {
	            $(e).parent().prepend($(e))
	        })
	    },
	    afterInit: function afterInit(el) {
	        if ($("body").hasClass("rtl")) this.jumpTo(1000)
	    }
	})
	});
});

jQuery(function ($) {
    "use strict";
    $(window).resize(function () {
    	        
    });
});	    
jQuery(function ($) {
    "use strict";
    $("#off-canvas-menu .haschild .mega-child-icon").click(function (e) {
    	e.preventDefault();
        var _parent = $(this).parent();
        var _dropdown = _parent.next('.dropdown-menu');
        var _grandparent = _parent.parent();
        _grandparent.removeClass('open');
        if(_grandparent.hasClass('ov-open')) {
        	_grandparent.removeClass('ov-open');
        	_dropdown.slideUp("normal");
        } else {
        	_grandparent.addClass('ov-open');        	
        	_dropdown.slideDown("normal");        	
        }	
        
        
    })
    $("#off-canvas-menu .haschild .mega-child-icon").mouseover(function (e) {       
        e.preventDefault();
        return false;        
    })
    $("#off-canvas-menu li a").mouseover(function (e) {       
        e.preventDefault();
        return false;
        
    })
});
function view_as() {
	var viewGrid = $(".view-grid"),
        viewList = $(".view-list"),
        productList = $(".products-list");
    viewGrid.click(function (e) {    	
        productList.removeClass("products-list-in-row");
        productList.addClass("products-list-in-column");
        $(this).addClass('active');
        viewList.removeClass("active");
        e.preventDefault()
    });
    viewList.click(function (e) {    	
        productList.removeClass("products-list-in-column");
        productList.addClass("products-list-in-row");
        viewGrid.removeClass("active");
        $(this).addClass('active');        
        e.preventDefault()
    })
}
jQuery(function ($) {
    "use strict";
    view_as();
});
jQuery(function ($) {
    "use strict";
    $.initQuantity = function ($control) {
        $control.each(function () {
            var $this = $(this),
                data = $this.data("inited-control"),
                $plus = $(".input-group-addon:last", $this),
                $minus = $(".input-group-addon:first", $this),
                $value = $(".form-control", $this);
            if (!data) {
                $control.attr("unselectable", "on").css({
                    "-moz-user-select": "none",
                    "-o-user-select": "none",
                    "-khtml-user-select": "none",
                    "-webkit-user-select": "none",
                    "-ms-user-select": "none",
                    "user-select": "none"
                }).bind("selectstart", function () {
                    return false
                });
                $plus.click(function () {
                    var val =
                        parseInt($value.val()) + 1;
                    $value.val(val);
                    return false
                });
                $minus.click(function () {
                    var val = parseInt($value.val()) - 1;
                    $value.val(val > 0 ? val : 1);
                    return false
                });
                $value.blur(function () {
                    var val = parseInt($value.val());
                    $value.val(val > 0 ? val : 1)
                })
            }
        })
    };
    $.initQuantity($(".quantity-control"));
    $.initSelect = function ($select) {
        $select.each(function () {
            var $this = $(this),
                data = $this.data("inited-select"),
                $value = $(".value", $this),
                $hidden = $(".input-hidden", $this),
                $items = $(".dropdown-menu li > a", $this);
            if (!data) {
                $items.click(function (e) {
                    if ($(this).closest(".sort-isotope").length >
                        0) e.preventDefault();
                    var data = $(this).attr("data-value"),
                        dataHTML = $(this).html();
                    $this.trigger("change", {
                        value: data,
                        html: dataHTML
                    });
                    $value.html(dataHTML);
                    if ($hidden.length) $hidden.val(data)
                });
                $this.data("inited-select", true)
            }
        })
    };
    $.initSelect($(".btn-select"))
});
jQuery(function ($) {
    "use strict";
    $("#off-canvas-menu-toggle").bind("click", function (e) {
        $("body").toggleClass("off-canvas-menu-open");        
        $("html, body").animate({
            scrollTop: 0
        }, "300");
        e.preventDefault()
    });
    $("#off-canvas-menu-close").bind("click", function (e) {
        $("body").removeClass("off-canvas-menu-open");        
    });    
});

jQuery(document).ready(function() {
	jQuery('.owl-item').addClass("a-hidden").viewportChecker({
	    classToAdd: 'a-visible animated fadeInUp', // Class to add to the elements when they are visible
	    offset: 30    
	});   
	jQuery('.service-box').addClass("a-hidden").viewportChecker({
	    classToAdd: 'a-visible animated fadeInUp', // Class to add to the elements when they are visible
	    offset: 30    
	});
	jQuery('.jms-blog').addClass("a-hidden").viewportChecker({
	    classToAdd: 'a-visible animated fadeInUp', // Class to add to the elements when they are visible
	    offset: 30    
	});
	jQuery('.jms_testimonials').addClass("a-hidden").viewportChecker({
	    classToAdd: 'a-visible animated fadeInUp', // Class to add to the elements when they are visible
	    offset: 30    
	});
	jQuery('.intro_special_product').addClass("a-hidden").viewportChecker({
	    classToAdd: 'a-visible animated fadeInLeft', // Class to add to the elements when they are visible
	    offset: 30    
	});
	jQuery('.deal_home').addClass("a-hidden").viewportChecker({
	    classToAdd: 'a-visible animated fadeInRight', // Class to add to the elements when they are visible
	    offset: 30    
	});
	
	
});  

jQuery(function ($) {
    "use strict";
    $(window).scroll(function () {
    	if ($(window).scrollTop() >= 50) {	
			$(".header-bar").addClass("navbar-fixed-top");
    		$("#back-to-top").stop().fadeIn(300);
    	} else if ($(window).scrollTop() < 200) {
    		$("#back-to-top").stop().fadeOut(300);
			$(".header-bar").removeClass("navbar-fixed-top");
    	}
    });
});
jQuery(function ($) {
    "use strict";
    $(".search-box > a").click(function (e) {
        $('#jms_ajax_search').toggleClass('jms_search');
		e.stopPropagation();
		return false;
    })
});

function quick_view() {
	$(document).on('click', '.quick-view:visible', function(e) 
	{
		e.preventDefault();		
		var url = this.rel;		
		if (url.indexOf('?') != -1)
			url += '&';
		else
			url += '?';

		if (!!$.prototype.fancybox)
			$.fancybox({
				'padding':  0,
				'width':    900,
				'height':   450,
				'type':     'iframe',
				'href':     url + 'content_only=1'
			});
	});
}
function back_to_top() {	  
    $('.back-to-top').click(function(event) {
        event.preventDefault();
        $('html, body').animate({scrollTop: 0}, 500);
        return false;
    })
}

var initialLoad = true;
$(document).ready(function() {
	if(initialLoad){
		$(".loader").fadeOut("slow");
		initialLoad = false;
	}
});
$(window).load(function () {      	
    $('.dropdown-menu input, .dropdown-menu label').click(function(e) {
        e.stopPropagation();
    });     
    quick_view();
    back_to_top();
    $(".view-grid").addClass('active');
    
});

