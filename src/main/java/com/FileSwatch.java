package com;
import java.awt.Dimension;
import java.awt.Toolkit;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Calendar;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.JTextArea;

import net.contentobjects.jnotify.JNotify;
import net.contentobjects.jnotify.JNotifyListener;


 
public class FileSwatch extends JPanel {
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private JFrame frame = new JFrame();
    private JTextArea textArea = new JTextArea();
    private JScrollPane pane = new JScrollPane(textArea);
    private static FileSwatch watcher = new FileSwatch();
 
    private void sample(String path) throws Exception {
        // System.out.println(path);
        //showInfo("Monitoring: " + path);
        int mask = JNotify.FILE_CREATED | JNotify.FILE_DELETED
                | JNotify.FILE_MODIFIED | JNotify.FILE_RENAMED;
        boolean watchSubtree = true;
        int watchID = JNotify.addWatch(path, mask, watchSubtree, new Listener());
 
        Thread.sleep(1000000);
 
        boolean res = JNotify.removeWatch(watchID);
        if (!res) {
            // System.out.println("Invalid");
            showInfo("Invalid");
        }
    }
 
    @SuppressWarnings("static-access")
	public void TouchFile(String fName) {
        if ((fName.indexOf("Thumbs") == -1) && (fName.indexOf(".rar") == -1)
                && (fName.indexOf(".part") == -1)) {
            String TodayDate = "";
            String fModifyDate = "";
            //String line;
            String line2 = "error";
            Calendar calendar = Calendar.getInstance();
            SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
            File filename = new File(fName);
            
          
        try {
            } catch (Exception e) {
                e.printStackTrace();
            }
            TodayDate = dateFormat.format(calendar.getTime());
            fModifyDate = dateFormat.format(filename.lastModified());
            try {
                Thread.currentThread().sleep(1000);
                // showInfo(line2 + "  " + (!fModifyDate.equals(TodayDate)));
 
                while ((line2.indexOf("error") != -1)
                        && (!fModifyDate.equals(TodayDate))) {
                    // System.out.println(fName + " modified on: " +
                    // fModifyDate);
                    line2 = " ";
              //      line = " ";
                    
                    showInfo(line2);
                }
                showInfo(fName + " modified on: " + fModifyDate);
            } catch (Exception err) {
                err.printStackTrace();
            }
        }
    }
 
    public void showInfo(String data) {
    	
    	//System.out.println(data);
    	 
    	/*SendData s=new SendData();
	   
*/    	
    }
    
    
    
 
    class Listener implements JNotifyListener {
        public void fileRenamed(int wd, String rootPath, String oldName,
                String newName) {
        	
            // print("renamed " + rootPath + " : " + oldName + " -> " +
            // newName);
            showInfo("renamed " + rootPath + "\\" + oldName + " -> " + newName);
        }
 
        public void fileModified(int wd, String rootPath, String name) {
            // print("modified " + rootPath + " : " + name);
            TouchFile(rootPath + "\\" + name);
            // showInfo("modified " + rootPath + "\\" + name);
        }
 
        public void fileDeleted(int wd, String rootPath, String name) {
            // print("deleted " + rootPath + " : " + name);
            showInfo("deleted " + rootPath + "\\" + name);
        }
 
        public void fileCreated(int wd, String rootPath, String name) {
            // print("created " + rootPath + " : " + name);
            TouchFile(rootPath + "\\" + name);
            showInfo("created " + rootPath + "\\" + name);
        }
 
        void print(String msg) {
            // System.err.println(msg);
            showInfo(msg);
        }
    }
 
    public static void main(String[] args) {
        String path = com.util.Constants.DATA_TPA;
        Dimension screenSize = Toolkit.getDefaultToolkit().getScreenSize();
        watcher.frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        watcher.frame.setSize(500, 200);
        watcher.frame.setVisible(false);                //   Display Frame
        watcher.frame.getContentPane().add(watcher.pane);
        watcher.frame.setVisible(false);                 //  Display Frame
        watcher.frame.setLocation(screenSize.width - 500,
                screenSize.height - 250);
        try {
            /*if (args.length > 0) {
                new FileWatcher().sample(args[0]);
            } else {
             */   new FileSwatch().sample(path);
 
           // }
 
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}