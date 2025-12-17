import javax.swing.*;
import java.awt.*;

public static class Window extends JFrame{
    public Window(){
        setSize(800,600);
        setLocationRelativeTo(null);
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        setTitle("Window");

        draw();
        setVisible(true);
    }
    private void draw(){
        Rectangle rectangle1 = new Rectangle(0, 0,100,100, Color.BLUE);
        Oval oval1 = new Oval(30, 30,100,100, Color.GREEN);
        add(oval1);
        add(rectangle1);

    }
    class Rectangle extends JPanel{
        private int x,y,width,height;
        private Color c;
        Rectangle(int x, int y, int width, int height, Color c){
            this.x = x;
            this.y = y;
            this.width = width;
            this.height = height;
            this.c = c;
            setBounds(0,0,100,100);
        }
        @Override
        protected void paintComponent(Graphics g){
            super.paintComponent(g);
            Graphics2D graphics = (Graphics2D) g;
            graphics.setColor(c);
            graphics.fillRect(x,y,width,height);
        }
    }
    class Oval extends JPanel{
        private int x,y,width,height;
        private Color c;
        Oval(int x, int y, int width, int height, Color c){
            this.x = x;
            this.y = y;
            this.width = width;
            this.height = height;
            this.c = c;
            setBounds(0,0,50,50);
        }
        @Override
        protected void paintComponent(Graphics g){
            super.paintComponent(g);
            Graphics2D graphics = (Graphics2D) g;
            graphics.setColor(c);
            graphics.fillOval(x,y,width,height);
        }
    }
}

void main() {
    new Window();
}
