package com.pms.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pms.dao.SettingDAO;
import com.pms.dto.SettingDTO;

public class SettingCommand implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		request.setCharacterEncoding("UTF-8");

		SettingDTO sdto = new SettingDTO();
		SettingDAO sdao = new SettingDAO();

		sdto.setCount(Integer.parseInt(request.getParameter("count")));
		sdto.setDtime(Integer.parseInt(request.getParameter("dtime")));
		sdto.setFare(Integer.parseInt(request.getParameter("fare")));
		sdto.setOtime(Integer.parseInt(request.getParameter("ofare")));
		sdto.setMonth_fare(Integer.parseInt(request.getParameter("month_fare")));

		sdao.updateSetting(sdto);

		return "login/login";
	}

}
