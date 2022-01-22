package doa.servlet;

import java.io.File;
import java.io.IOException;
import java.net.URLDecoder;
import java.nio.file.Files;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "LoadImage", urlPatterns
        = {
            "/images/*"
        })
public class LoadImage extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // img/Sarah12345678.jpg
        //get requested image through the path info
        String requestedImage = request.getPathInfo();
        
        //check if requested image is null
        if (requestedImage != null) {
            final String IMAGES_FOLDER
                    = "C:/Users/Dell/Pictures/DOA";
            requestedImage
                    = URLDecoder.decode(requestedImage, "UTF-8");

            //represent the image file as a file object
            File imageFile
                    = new File(IMAGES_FOLDER, requestedImage);
            
            log(imageFile.toString());

            //check if the file exists
            if (imageFile.exists()) {
                //get the content type
                String contentType
                        = getServletContext().getMimeType(
                                imageFile.getName());
                response.setContentType(contentType);
                response.setHeader("Content-Length",
                        String.valueOf(imageFile.length()));

                //copy the image file's data to the response
                Files.copy(imageFile.toPath(),
                        response.getOutputStream());
            } else //send 404 error code if image is not found
            {
                response.sendError(404);
            }
        } else {
            response.sendError(HttpServletResponse.SC_NOT_FOUND);
        }

    }
}
