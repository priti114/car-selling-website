import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ContactUsServlet")
public class ContactUsServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Retrieve form data
        String carDesign = request.getParameter("carDesign");
        String price = request.getParameter("price");
        String carMileage = request.getParameter("carMileage");
        String colorVariety = request.getParameter("colorVariety");
        String aboutCar = request.getParameter("aboutCar");
        String otherQuery = request.getParameter("otherQuery");

        // Process the data (you can perform any business logic here)

        // Send a response back to the client
        response.getWriter().println("Form submitted successfully!");
    }
}
