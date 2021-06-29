package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import dto.PersonDTO;

public class PersonDAO {

	private volatile static PersonDAO instance;
	private PersonDAO() {

	}
	public static PersonDAO getInstance(){

		if(instance == null){
			synchronized (PersonDAO.class) {
				if(instance == null)
					instance = new PersonDAO();
			}
		}
		return instance;

	}


	private Connection getConnection() throws Exception{
		Context ctx = new InitialContext(); 
		DataSource ds=(DataSource)ctx.lookup("java:comp/env/jdbc/oracle");
		return ds.getConnection();
	}
	
	public int insert(PersonDTO dto) throws Exception{
		String sql = "insert into person values(person_seq, ?, ?)";
		try(Connection con = this.getConnection(); 
				PreparedStatement pstat = con.prepareStatement(sql);
				){

			pstat.setString(1, dto.getName());
			pstat.setString(2,dto.getContact());

			int result = pstat.executeUpdate();
			con.commit();
			return result;
		}
	}
	
	public int delete (int id) throws Exception{
		
		String sql = "delete from person where id=?";
		try(
				Connection con = this.getConnection();
				PreparedStatement pstat = con.prepareStatement(sql);
				){

			pstat.setInt(1, id);
			int result = pstat.executeUpdate();
			con.commit();
			return result;
		}
	}
	
	public int delete (String name) throws Exception{
		
		String sql = "delete from person wher name=?";
		try(
				Connection con = this.getConnection();
				PreparedStatement pstat = con.prepareStatement(sql);
				){

			pstat.setString(1, name);
			int result = pstat.executeUpdate();
			con.commit();
			return result;
		}
	}
	
	public int update(PersonDTO dto) throws Exception{
		String sql = "update person set name=?, contact=? where id=?";
		
		try(Connection con = this.getConnection(); 
				PreparedStatement pstat = con.prepareStatement(sql);
				){

			pstat.setString(1, dto.getName());
			pstat.setString(2,dto.getContact());
			pstat.setInt(3,  dto.getId());

			int result = pstat.executeUpdate();
			con.commit();
			return result;
		}
	}
	
	public List<PersonDTO> selectAll() throws Exception{
		String sql = "select * from person";
		try(
				Connection con = this.getConnection();
				PreparedStatement pstat = con.prepareStatement(sql);
				ResultSet rs = pstat.executeQuery();
				){

			List<PersonDTO> list = new ArrayList<>();
			while(rs.next()) {

				int id = rs.getInt("id");
				String name = rs.getString("name");
				String contact = rs.getString("contact");
				PersonDTO dto =new PersonDTO(id, name, contact);
				list.add(dto);
			}
			return list;
		}

	}

	
	
	
}
