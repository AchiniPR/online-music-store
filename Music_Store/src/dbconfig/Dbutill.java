package dbconfig;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import artist_manager.Artist;
import artist_manager.Song;


public class Dbutill {
	
	private PreparedStatement preparedStatement;
	private Connection connection;

	private void dbcoonect() throws ClassNotFoundException, SQLException {
		
		Class.forName("com.mysql.jdbc.Driver");
		connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/music_store","root","");
		
	}
	
	
	
	public ArrayList<Artist> getArtists(int id){
		
		ArrayList<Artist> artistlist = new ArrayList<Artist>();
		
		try {
			dbcoonect();
			if(id == 0) {
				preparedStatement = connection.prepareStatement("SELECT * FROM artist ");
				System.out.println(preparedStatement);
			}else {
			
			preparedStatement = connection.prepareStatement("SELECT * FROM artist where artist.aID = ? ");
			preparedStatement.setInt(1, id);
			System.out.println(preparedStatement);
			}
		ResultSet rs =preparedStatement.executeQuery();
		
		while(rs.next()) {
			Artist artists = new Artist();
			artists.setaID(rs.getInt(1));
			artists.setaName(rs.getString(2));
			artists.setaDescription(rs.getString(3));
			artists.setaDateOfBirth(rs.getString(4));
			artists.setaGeneres(rs.getString(5));
			artists.setaLabels(rs.getString(6));
			artists.setaPlayRole(rs.getString(7));
			artists.setaActiveYears(rs.getString(8));
			artistlist.add(artists);
		}
			
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return artistlist;
	}
	
	
	public ArrayList<Song> getSong(int id){
		ArrayList<Song> songlist = new ArrayList<Song>();
		
		try {
			dbcoonect();
			if(id == 0) {
			preparedStatement = connection.prepareStatement("SELECT * FROM song");
			}else {
				preparedStatement = connection.prepareStatement("SELECT * FROM song WHERE song.sID = ? ");
				preparedStatement.setInt(1, id);
			}
			ResultSet rs = preparedStatement.executeQuery();
			
			while(rs.next()) {
				Song songs = new Song();
				songs.setsID(rs.getInt(1));
				songs.setsName(rs.getString(2));
				songs.setsAID(rs.getInt(3));
				songs.setsGID(rs.getInt(4));
				songs.setsAlbum(rs.getString(5));
				songs.setsReleasedDate(rs.getString(6));
				songs.setsPrice(rs.getDouble(7));
				songlist.add(songs);
			}

		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return songlist;
	}
	
	public void addsong(Song song) {
		System.out.println("im here 222");
		try {
			dbcoonect();
			
			preparedStatement= connection.prepareStatement(" INSERT INTO song (sID, sName, sAID, sGID, sAlbum, sReleasedDate, sPrice) VALUES ( NULL, ?, 0, 0, ?, ?, ? )");
			preparedStatement.setString(1, song.getsName());
			preparedStatement.setString(2, song.getsAlbum());
			preparedStatement.setString(3, song.getsReleasedDate());
			preparedStatement.setDouble(4, song.getsPrice());
			
			
			System.out.println(preparedStatement);
			preparedStatement.execute();
			
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
	
	public void updatsong(int id,Song song) {
		try {
			dbcoonect();
			
			preparedStatement = connection.prepareStatement("UPDATE song SET sName = ?, sAlbum = ?, sReleasedDate = ?, sPrice = ? WHERE song.sID = ? ");
			
			preparedStatement.setString(1, song.getsName());
			preparedStatement.setString(2, song.getsAlbum());
			preparedStatement.setString(3, song.getsReleasedDate());
			preparedStatement.setDouble(4, song.getsPrice());
			preparedStatement.setInt(5, id);
			
			preparedStatement.execute();
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	
	public void removesong(int id) {
		System.out.println("im here too");
		try {
			dbcoonect();
			
			preparedStatement = connection.prepareStatement("DELETE FROM song WHERE song.sID = ? ");
			preparedStatement.setInt(1, id);
			System.out.println(preparedStatement);
			preparedStatement.execute();
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	
	
}
