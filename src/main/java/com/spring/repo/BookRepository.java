package com.spring.repo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.spring.model.BookBean;

public class BookRepository {

	public List<BookBean> showAllBooks() {
		List<BookBean> bookList = new ArrayList<BookBean>();
		Connection con = UserConnection.getConnection();
		try {

			PreparedStatement ps = con.prepareStatement("SELECT * FROM jwd57.book");
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				BookBean book = new BookBean();
				book.setId(rs.getInt(1));
				book.setTitle(rs.getString(2));
				book.setAuthor(rs.getString(3));
				book.setPrize(rs.getDouble(4));

				bookList.add(book);
			}

		} catch (SQLException e) {
			System.out.println("Book List : " + e.getMessage());
		}

		return bookList;
	}

	public BookBean showBookbyId(int bookId) {
		BookBean book = null;
		Connection con = UserConnection.getConnection();
		try {
			PreparedStatement ps = con.prepareStatement("select * from book where id=?");
			ps.setInt(1, bookId);

			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				book = new BookBean();
				book.setId(rs.getInt(1));
				book.setTitle(rs.getString(2));
				book.setAuthor(rs.getString(3));
				book.setPrize(rs.getDouble(4));
			}
		} catch (SQLException e) {
			System.out.println("show by id : " + e.getMessage());
		}

		return book;
	}

	public int updateBook(BookBean bean) {
		int i = 0;
		Connection con = UserConnection.getConnection();
		try {
			PreparedStatement ps = con.prepareStatement("update book set title=?,author=?, prize=? where id=?");
			ps.setString(1, bean.getTitle());
			ps.setString(2, bean.getAuthor());
			ps.setDouble(3, bean.getPrize());
			ps.setInt(4, bean.getId());

			i = ps.executeUpdate();
		} catch (SQLException e) {
			System.out.println("Update book : " + e.getMessage());
		}
		return i;
	}
	
	public int deleteBook(int id) {
		int i = 0;
		Connection con = UserConnection.getConnection();
		try {
			PreparedStatement ps = con.prepareStatement("update book set status=0 where id=?");
			ps.setInt(1, id);

			i = ps.executeUpdate();
		} catch (SQLException e) {
			System.out.println("Delete book : " + e.getMessage());
		}
		return i;
	}
	
	public int reAddBook(int id) {
		int i=0;
		Connection con = UserConnection.getConnection();
		
		try {
			PreparedStatement ps = con.prepareStatement("update book set status=1 where id=?");
			ps.setInt(1, id);
			
			i = ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("Recycling Book Failed : "+ e.getMessage());
		}
		return i;
	}
	
	
	public int insertBooks(BookBean book) {
		int i = 0;
		Connection con = UserConnection.getConnection();
		try {
			PreparedStatement ps = con.prepareStatement("insert into book (title,author,prize) values(?,?,?)");
			ps.setString(1, book.getTitle());
			ps.setString(2, book.getAuthor());
			ps.setDouble(3, book.getPrize());
			
			i = ps.executeUpdate();
		} catch (SQLException e) {
			System.out.println("Insert Book : " + e.getMessage());
		}
		return i;
	}
}