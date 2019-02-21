package com.mi.group.model.service;

import static common.JDBCTemplate.close;
import static common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.List;

import com.mi.group.model.dao.GroupDao;
import com.mi.group.model.vo.Group;

public class GroupService {
	private GroupDao dao=new GroupDao();
	
	public List<Group> selectAllGroup(String memberId){
		Connection conn=getConnection();
		
		List<Group> groupList=dao.selectAllGroup(conn,memberId);
		close(conn);
		return groupList;
	}
	
	public List<String> selectId(String search)
	{
		Connection conn=getConnection();
		List<String> list=dao.selectId(conn,search);
		close(conn);
		return list;
		
	}
	

}
