package com.pms.command;

import java.util.HashMap;

public class Action {
	private static Action instance = new Action();
	
	public static Action getInstance() {
		return instance;
	}

	private HashMap<String, Command> map = new HashMap<String, Command>();
	
	private Action() {
		/* 해시맵에 키값에 해당되는 객체 저장 */
		map.put("/daily", new StatDailyCommand());
		map.put("/empty", new EmptyCommand());
      	
      	map.put("/imgupdate",new LoglmgModifyAction());
      	map.put("/index",new IndexCommand());
      	map.put("/imgDtailupdate", new LogimgDtailupdate());
      	map.put("/logdetail",new LogDetailCommand());
      	
      	map.put("/member",new MemberManageCommand());
      	map.put("/memberInsert",new MemberInsertCommand());
      	map.put("/loglist",new LogListCommand());
     	map.put("/memberSearch",new memberSearchCommand());
           	
      	map.put("/login",new LoginCommand());
      	map.put("/loginac",new LoginacCommand());
      	map.put("/join",new JoinCommand());
      	map.put("/joinac",new JoinacCommand());
      	map.put("/searchId",new SearchIdCommand());
      	map.put("/searchIdac",new SearchIdacCommand());
      	map.put("/searchPass",new SearchPassCommand());
      	map.put("/searchPassac",new SearchPassacCommand());
      	map.put("/setting",new SettingCommand());
      	map.put("/settingStart",new SettingStartCommand());
      	map.put("/change",new ChangeCommand());
      	map.put("/changeStart",new ChangeStartCommand());
      	map.put("/logout",new LogoutCommand());
      	map.put("/statTime",new StatTimeCommand());     	
      	map.put("/statTimeac",new StatTimeacCommand());     	
//      	map.put("/memberSearch",new memberSearchCommand());

      	map.put("/add_c_d",new Add_C_DCommand());
      	map.put("/search_cp_dc",new CDCommand2());  	
      	map.put("/search_C_D",new Search_C_DCommand());  	  	
      	map.put("/delete_C_D",new Delete_C_DCommand());  	  	
      	map.put("/modify_C_D",new Modify_C_DCommand());  	  	
     	map.put("/publish_sg_mt_proc",new publish_C_DCommand());  	  	
      	map.put("/search_log",new CDCommand3());
      	map.put("/search_log_proc",new Search_Log_Command());
      	map.put("/send_coupon",new Send_Coupon_Command());

      	map.put("/memberUpdate",new MemberUpdateCommand());  	  	

      	map.put("/monthly",new StatMonthCommand());
      	map.put("/dailySearch",new StatDailySearchCommand());
      	map.put("/monthSearch",new StatMonthSearchCommand());
	}
	
	/*getAction 실행시 객체 가져옴*/
	public Command getAction(String command) {
		Command action = null;
		action = map.get(command);
		if(action == null) {
			action = map.get("/empty");
		}
		return action;
	}

}
