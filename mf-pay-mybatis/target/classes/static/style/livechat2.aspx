

   	// livechat by www.mylivechat.com/  2018-06-12

   	


	   MyLiveChat.Version =3017;
	   MyLiveChat.FirstRequestTimeout =28800;
	   MyLiveChat.NextRequestTimeout =57600;
	   MyLiveChat.SyncType ="VISIT";
	   MyLiveChat.SyncStatus ="READY";
	   MyLiveChat.SyncUserName ="Guest_8e48d1c6";
	   MyLiveChat.SyncResult =null;
	   MyLiveChat.HasReadyAgents =false;
	   MyLiveChat.SourceUrl ="http://mamppro.com/zh/";
	   MyLiveChat.AgentTimeZone = parseInt("8" || "-5");
	   MyLiveChat.VisitorStatus ="VISIT";
	   MyLiveChat.UrlBase ="https://c1.mylivechat.com/livechat2/";
	   MyLiveChat.SiteUrl ="https://c1.mylivechat.com/";

   	

	   if (!MyLiveChat.AgentId) MyLiveChat.AgentId = MyLiveChat.RawAgentId;

	   MyLiveChat.Departments = [];

	   MyLiveChat.Departments.push({
		   Name:"Default",
		   Agents: [{
			   Id:'User:1',
			   Name:"admin",
			   Online:false
   			}],
		   Online:false
   		});



	   MyLiveChat.VisitorUrls = [];



   	


	   MyLiveChat.VisitorLocation ="CN|China|26|Shaanxi|Xian";
	   MyLiveChat.LastLoadTime = new Date().getTime();
	   MyLiveChat.VisitorDuration =60;
	   MyLiveChat.VisitorEntryUrl ="http://mamppro.com/zh/";
	   MyLiveChat.VisitorReferUrl =null;

	   MyLiveChat.VisitorUrls = [];



   	
	   MyLiveChat.VisitorUrls.push("http://mamppro.com/zh/");
   	

	   MyLiveChat_Initialize();

	   if (MyLiveChat.localStorage || MyLiveChat.userDataBehavior) {
		   MyLiveChat_SyncToCPR();
	   }

   	