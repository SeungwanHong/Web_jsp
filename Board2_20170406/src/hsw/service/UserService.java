package hsw.service;

import java.util.List;

import hsw.dao.BoardDao;
import hsw.dao.UserDao;
import hsw.vo.board.BoardVo;
import hsw.vo.user.LoginVo;
import hsw.vo.user.UserVo;

public class UserService {
	private UserDao userDao = new UserDao();
	
	
	public LoginVo login(String id, String pw){
		LoginVo userVo = userDao.login(id, pw);
		return userVo;
	}
	public List<UserVo> userList(){
		List<UserVo> userList = null;
		userList = userDao.userList();
		return userList;
	}
	public boolean join(String id, String pw, String name, String email) {
		int result = userDao.joinUser(id, pw, name, email);
		return 1==result;
	}
	public List<BoardVo> boardList(){
		List<BoardVo> boardList = null;
		return boardList;
	}
	public BoardVo board(String id, String pw){
		BoardVo boardVo = null;
		return boardVo;
	}
	
}
