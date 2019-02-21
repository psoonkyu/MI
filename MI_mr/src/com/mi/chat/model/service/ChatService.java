package com.mi.chat.model.service;

import static common.JDBCTemplate.close;
import static common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.List;

import com.mi.chat.model.dao.ChatDao;
import com.mi.chat.model.vo.Chatroom;

public class ChatService {

	public List<Chatroom> selectAllChatroom(String memberId) {
		Connection conn = getConnection();
		List<Chatroom> list = new ChatDao().selectAllChatroom(conn, memberId);
		close(conn);
		return list;
	}
}