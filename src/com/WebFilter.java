package com;

/**
 * Created by NightYuan on 2018/6/13.
 */
import javax.servlet.*;
import java.io.IOException;


public class WebFilter implements Filter {

    private String encoding = null;

    public void destroy() {
        encoding = null;
    }

    public void doFilter(ServletRequest request, ServletResponse response,
                         FilterChain filterChain) throws IOException, ServletException {
        if (encoding != null)
            request.setCharacterEncoding(encoding);
        filterChain.doFilter(request, response);
    }

    public void init(FilterConfig filterConfig) throws ServletException {
        encoding = filterConfig.getInitParameter("encoding");
    }

}