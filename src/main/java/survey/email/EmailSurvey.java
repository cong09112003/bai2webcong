package survey.email;

import java.io.IOException;
import javax.servlet.http.*;
import javax.servlet.*;
import survey.business.Transfer;
import survey.business.User;

public class EmailSurvey extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException{
        String url = "/index.jsp";

        // get current action
        String action = request.getParameter("action");
        if (action == null) {
            action = "join";  // default action
        }
        // perform action and set URL to appropriate page
        if(action.equals("join"))
            url="/index.jsp";// the "join" page
        else if (action.equals("add")) {
            // get parameters from the request
            String firstName = request.getParameter("firstName");
            String lastName = request.getParameter("lastName");
            String email = request.getParameter("email");
            String howHear = request.getParameter("howHear");
            String likeToReceive = request.getParameter("agree");
            String contact =request.getParameter("contactBy");
            // store data in User object and save User object in db
            User user=new User(firstName,lastName,email);
            // store data in User object and save transfer object in db
            // check null
            if ("searchEngine".equals(howHear)) {
                howHear="Search Engine";
            } else if ("wordOfMouth".equals(howHear)) {
                howHear="Word of mouth";
            }
            else {
                howHear="other";
            }
            if(likeToReceive!=null){
                likeToReceive="You'd like receive announcements about new CDs and special offers!";
            }
            else{
                likeToReceive="You would'nt like receive announcements about new CDs and special offers!";
            }
            Transfer transfer=new Transfer(howHear,likeToReceive,contact);
            //UserDB.insert(user);
            // set User object in request object and set URL
            request.setAttribute("user", user);
            request.setAttribute("transfer", transfer);

            url = "/thanks.jsp";   // the "thanks" page
        }
        // forward request and response objects to specified URL
        getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException,IOException{
        doPost(request,response);
    }
}
