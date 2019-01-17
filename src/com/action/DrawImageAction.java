package com.action;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.Graphics2D;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.Random;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

public class DrawImageAction extends ActionSupport{
	private static final long serialVersionUID = 3038623696184546092L;

	public static final int WIDTH = 110;// 生成的图片的宽度
	public static final int HEIGHT = 26;// 生成的图片的高度
	public String execute(){
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpServletResponse response=ServletActionContext.getResponse();
		String createTypeFlag=request.getParameter("createTypeFlag");// 接收客户端传递的createTypeFlag标识
		
		// 1.在内存中创建一张图片
		BufferedImage bi = new BufferedImage(WIDTH, HEIGHT, BufferedImage.TYPE_INT_RGB);
		// 2.得到图片
		Graphics g = bi.getGraphics();
		// 3.设置图片的背影色
		setBackGround(g);
		// 4.设置图片的边框
		setBorder(g);
		// 5.在图片上画干扰线
		drawRandomLine(g);
		// 6.写在图片上随机数
		// String random = drawRandomNum((Graphics2D) g,"ch");//生成中文验证码图片
		//String random = drawRandomNum((Graphics2D) g, "nl");// 生成数字和字母组合的验证码图片
		// String random = drawRandomNum((Graphics2D) g,"n");//生成纯数字的验证码图片
		// String random = drawRandomNum((Graphics2D) g,"l");//生成纯字母的验证码图片
		String random = drawRandomNum((Graphics2D) g, createTypeFlag);// 根据客户端传递的createTypeFlag标识生成验证码图片
		// 7.将随机数存在session中
		request.getSession().setAttribute("checkcode", random);
		// 8.设置响应头通知浏览器以图片的形式打开
		response.setContentType("image/jpeg");// 等同于response.setHeader("Content-Type",
												// "image/jpeg");
		// 9.设置响应头控制浏览器不要缓存
		response.setDateHeader("expries", -1);
		response.setHeader("Cache-Control", "no-cache");
		response.setHeader("Pragma", "no-cache");
		// 10.将图片写给浏览器
		try {
			ImageIO.write(bi, "jpg", response.getOutputStream());
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	// 设置背景颜色
		private void setBackGround(Graphics g) {
			// 设置颜色
			g.setColor(Color.WHITE);
			// 填充区域
			g.fillRect(0, 0, WIDTH, HEIGHT);
		}

		/**
		 * 设置图片的边框
		 * 
		 * @param g
		 */
		private void setBorder(Graphics g) {
			// 设置边框颜色
			g.setColor(Color.BLUE);
			// 边框区域
			g.drawRect(1, 1, WIDTH - 2, HEIGHT - 2);
		}

		private void drawRandomLine(Graphics g) {
			// 设置颜色
			g.setColor(Color.GREEN);
			// 设置线条个数并画线
			for (int i = 0; i < 5; i++) {
				int x1 = new Random().nextInt(WIDTH);
				int y1 = new Random().nextInt(HEIGHT);
				int x2 = new Random().nextInt(WIDTH);
				int y2 = new Random().nextInt(HEIGHT);
				g.drawLine(x1, y1, x2, y2);
			}
		}

		/**
		       * 画随机字符
		      * @param g
		      * @param createTypeFlag
		      * @return
		      * String... createTypeFlag是可变参数，
		      * Java1.5增加了新特性：可变参数：适用于参数个数不确定，类型确定的情况，java把可变参数当做数组处理。注意：可变参数必须位于最后一项
		      */
		    private String drawRandomNum(Graphics2D g,String... createTypeFlag) {
		         // 设置颜色
		       g.setColor(Color.RED);
		       // 设置字体
		         g.setFont(new Font("宋体", Font.BOLD, 20));
		       String baseNumLetter = "03456789ABCDEFGHJKLMNOPQRSTUVWXYZ";
		       //纯数字
		         String baseNum = "03456789";
		        //纯字母
		       String baseLetter = "ABCDEFGHJKLMNOPQRSTUVWXYZ";
		       if (createTypeFlag.length > 0 && null != createTypeFlag[0]) {
		    	              if (createTypeFlag[0].equals("ch")) {
		    	               // 截取汉字
		    	                //return createRandomChar(g, baseChineseChar);
		                }else if (createTypeFlag[0].equals("nl")) {
		    	                 // 截取数字和字母的组合
		    	                 return createRandomChar(g, baseNumLetter);
		             }else if (createTypeFlag[0].equals("n")) {
		    	                    // 截取数字
		    	                 return createRandomChar(g, baseNum);
		    	               }else if (createTypeFlag[0].equals("l")) {
		    	                 // 截取字母
		    	                  return createRandomChar(g, baseLetter);
		    	              }
		    	       }else {
		                // 默认截取数字和字母的组合
		    	               return createRandomChar(g, baseNumLetter);
		    	           }
		    	         
		    	           return "";
		    	     }
		    /**
		          * 创建随机字符
		          * @param g
		          * @param baseChar
		         * @return 随机字符
		          */
		        private String createRandomChar(Graphics2D g,String baseChar) {
		             StringBuffer sb = new StringBuffer();
		             int x = 5;
		             String ch ="";
		            // 控制字数
		             for (int i = 0; i < 4; i++) {
		                 // 设置字体旋转角度
		                 int degree = new Random().nextInt() % 30;
		                 ch = baseChar.charAt(new Random().nextInt(baseChar.length())) + "";
		                 sb.append(ch);
		                // 正向角度
		                 g.rotate(degree * Math.PI / 180, x, 20);
		                 g.drawString(ch, x, 20);
		                 // 反向角度
		                 g.rotate(-degree * Math.PI / 180, x, 20);
		                 x += 30;
		             }
		           return sb.toString();
		         }
		     
}
