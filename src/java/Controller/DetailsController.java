package Controller;

import dao.impl.CategoryDAOImpl;
import dao.impl.FeedbackDAOImpl;
import dao.impl.ProductDAOImpl;
import Entity.FeedBack;
import Entity.Product;
import java.io.IOException;
import static java.lang.System.out;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "DetailsController", urlPatterns = {"/details"})
public class DetailsController extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try {
            /* TODO output your page here. You may use following sample code. */
            FeedbackDAOImpl dao = new FeedbackDAOImpl();
            ProductDAOImpl daoPro = new ProductDAOImpl();
            CategoryDAOImpl daoCate = new CategoryDAOImpl();            
            String service = request.getParameter("do");
            if (service == null) {
                service = "details";
            }
            if (service.equals("details")) {
                //Lay ProductID
                int ProductID = Integer.parseInt(request.getParameter("pid"));
                List<FeedBack> list = new ArrayList<>();
                //Lay danh sach feedBack thong qua ProductID
                list = dao.ListFeedBackByProductID(ProductID);
                //Lay thong tin Product thong qua ProductID
                Product pro = daoPro.getProductByProductID(ProductID);
                //Lay CategoryName thong qua ProductID
                String CategoryName = daoCate.GetCategoryName(pro.getCategoryID());
                List<Product> listrelated = daoPro.getProductsByCateIDTop4(pro.getCategoryID());
                request.setAttribute("listrelated", listrelated);
                request.setAttribute("categoryName", CategoryName);
                request.setAttribute("proID", ProductID);
                request.setAttribute("pro", pro);
                request.setAttribute("list", list);
                request.getRequestDispatcher("details.jsp").forward(request, response);
            }
            if (service.equals("postcomment")) {
                String submit = request.getParameter("submit");
                if (submit == null) {
                    response.sendRedirect("details");
                } else {
                    out.print("ok");
                    //Lay thoi gian comment
                    LocalDateTime myDateObj = LocalDateTime.now();
                    DateTimeFormatter myFormatObj = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
                    String formattedDate = myDateObj.format(myFormatObj);
                    System.out.println(formattedDate);
                    String comment = request.getParameter("comment");
                    int ProductID = Integer.parseInt(request.getParameter("proID"));
                    int AccountID = Integer.parseInt(request.getParameter("accID"));
                    //Lay cac thong tin comment
                    FeedBack feedback = FeedBack.builder()
                            .feedbackContent(comment)
                            .productID(ProductID)
                            .accountID(AccountID)
                            .timeComment(formattedDate)
                            .build();
                    //Insert vao database
                    dao.InsertFeedBack(feedback);
                    response.sendRedirect("details?pid=" + ProductID);
                }                
                
            }

        }catch(Exception ex){
            request.getRequestDispatcher("error500.jsp").forward(request, response);
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
