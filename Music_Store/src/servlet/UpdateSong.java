package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import artist_manager.Song;
import dbconfig.Dbutill;

/**
 * Servlet implementation class UpdateSong
 */
@WebServlet("/UpdateSong")
public class UpdateSong extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateSong() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Song song = new Song();
		System.out.println("im in hear 1");
		int id = Integer.parseInt(request.getParameter("sid"));
		System.out.println(" " + id);
		song.setsID(id);
		song.setsName(request.getParameter("name"));
		song.setsAlbum(request.getParameter("album"));
		song.setsReleasedDate(request.getParameter("date"));
		song.setsPrice(Double.parseDouble(request.getParameter("price")));
		
		Dbutill dbutill = new Dbutill();
		dbutill.updatsong(id, song);
	}

}
