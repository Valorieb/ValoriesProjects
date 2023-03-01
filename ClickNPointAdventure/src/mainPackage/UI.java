package mainPackage;

import java.awt.Color;
import java.awt.Font;
import java.awt.GridLayout;
import java.awt.Image;
import java.awt.event.MouseEvent;
import java.awt.event.MouseListener;

import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JMenuItem;
import javax.swing.JPanel;
import javax.swing.JPopupMenu;
import javax.swing.JTextArea;
import javax.swing.SwingUtilities;

public class UI {

	//instantiating an instance of the launcher class
	GameManager gm;
	
	JFrame window;
	public JTextArea messageText;
	public JPanel bgPanel[] = new JPanel[10];
	public JLabel bgLabel[] = new JLabel[10];
	
	
	//PLAYER UI
	JPanel lifePanel;
	JLabel lifeLabel[] = new JLabel[6];
	JPanel inventoryPanel;
	public JLabel swordLabel, shieldLabel, lanternLabel;
	
	//We want a UI for the entire program.
	//Passing the launcher class as a parameter allows modification of the ENTIRE program.
	
	public UI(GameManager gm) {
		this.gm = gm;
		
		//when the program is launched the window will be created and a screen displayed
		createMainField();
		createPlayerField();
		generateScene();
		
		
		window.setVisible(true);
	}
	
	public void createMainField() {
		
		
		window = new JFrame();
		window.setSize(800,600);
		window.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		window.getContentPane().setBackground(Color.black);
		window.setLayout(null);
		
		
		messageText = new JTextArea("THIS IS TEXT");
		messageText.setBounds(50,410,700,150);
		messageText.setBackground(Color.black);
		messageText.setForeground(Color.white);
		messageText.setEditable(false);
		messageText.setLineWrap(true);
		messageText.setWrapStyleWord(true);
		messageText.setFont(new Font("Book Antiqua", Font.PLAIN, 26));
		window.add(messageText);
		
		
	}
	
	public void createBackground(int bgNum, String bgFileName) {
		
		bgPanel[bgNum] = new JPanel();
		bgPanel[bgNum].setBounds(50,50,700,350);
		bgPanel[bgNum].setBackground(Color.blue);
		bgPanel[bgNum].setLayout(null);
		window.add(bgPanel[bgNum]);
		
		bgLabel[bgNum] = new JLabel();
		bgLabel[bgNum].setBounds(0,0,700,350);
		
		ImageIcon bgIcon = new ImageIcon(getClass().getClassLoader().getResource(bgFileName));
		bgLabel[bgNum].setIcon(bgIcon);
		
		
	}
	
	public void createObject(int bgNum, int objx, int objy, int objWidth, int objHeight, 
			String objFileName, String choice1Name, String choice2Name, String choice3Name
			, String choice1Command,String choice2Command, String choice3Command) {
		
		
		//CREATE POPUP MENU
		JPopupMenu popMenu = new JPopupMenu();
		//CREATE POPUP MENU ITEMS
		JMenuItem menuItem[] = new JMenuItem[4]; //remember index starts at zero
		menuItem[1] = new JMenuItem(choice1Name);
		menuItem[1].addActionListener(gm.aHandler);
		menuItem[1].setActionCommand(choice1Command);
		popMenu.add(menuItem[1]);
		
		menuItem[2] = new JMenuItem(choice2Name);
		menuItem[2].addActionListener(gm.aHandler);
		menuItem[2].setActionCommand(choice2Command);
		popMenu.add(menuItem[2]);
		
		menuItem[3] = new JMenuItem(choice3Name);
		menuItem[3].addActionListener(gm.aHandler);
		menuItem[3].setActionCommand(choice3Command);
		popMenu.add(menuItem[3]);
		
		//CREATE OBJECTS
		JLabel objectLabel = new JLabel();

		objectLabel.setBounds(objx,objy,objWidth,objHeight);
		
		//ACTIVATE TO SEE CLICKABLE AREA ON OBJECTS:
//		objectLabel.setOpaque(true);
//		objectLabel.setBackground(Color.blue);
		
		ImageIcon objectIcon = new ImageIcon(getClass().getClassLoader().getResource(objFileName));
		objectLabel.setIcon(objectIcon);
		
		objectLabel.addMouseListener(new MouseListener() {

			
			public void mouseClicked(MouseEvent e) {
				
				
			}

			
			public void mousePressed(MouseEvent e) {
				if (SwingUtilities.isRightMouseButton(e)) {
					popMenu.show(objectLabel, e.getX(), e.getY());
				}
			}

			
			public void mouseReleased(MouseEvent e) {
				
			}

			
			public void mouseEntered(MouseEvent e) {
					
			}

			
			public void mouseExited(MouseEvent e) {
			
			}
			});
		
		
		
		bgPanel[bgNum].add(objectLabel);
		
		
	}
	
	public void createArrowButton(int bgNum, int x, int y, int width, int height, String arrowFileName, String command) {
		
		ImageIcon arrowIcon = new ImageIcon(getClass().getClassLoader().getResource(arrowFileName));
		
		JButton arrowButton = new JButton();
		arrowButton.setBounds(x, y, width, height);
		arrowButton.setBackground(null);
		arrowButton.setContentAreaFilled(false);
		arrowButton.setFocusPainted(false);
		arrowButton.setIcon(arrowIcon);
		arrowButton.addActionListener(gm.aHandler);
		arrowButton.setActionCommand(command);
		
		bgPanel[bgNum].add(arrowButton);
	}
	
	
	public void createPlayerField() {
		
		lifePanel = new JPanel();
		lifePanel.setBounds(50,0,250,50);
		lifePanel.setBackground(Color.black);
		lifePanel.setLayout(new GridLayout(1,5));
		window.add(lifePanel);
		
		ImageIcon lifeIcon = new ImageIcon(getClass().getClassLoader().getResource("life.png"));
		
		//RESIZING IMAGE
		
		Image image = lifeIcon.getImage().getScaledInstance(35, 35, Image.SCALE_DEFAULT);
		lifeIcon = new ImageIcon(image);
		
		int i = 1;
		while(i<6) {
			lifeLabel[i] = new JLabel();
			lifeLabel[i].setIcon(lifeIcon);
			lifePanel.add(lifeLabel[i]);
			i ++;
		}
		
		inventoryPanel = new JPanel();
		inventoryPanel.setBounds(650,0,100,50);
		inventoryPanel.setBackground(Color.blue);
		inventoryPanel.setLayout(new GridLayout(1,3)); //TOTAL OF 3 ITEMS
		window.add(inventoryPanel);
		
		//CREATE ITEMS
		swordLabel = new JLabel();
		
	}
	
	//the generateScreen method consists of createBackground methods and createObject methods
	public void generateScene() {
		
		//SCENE 1
		createBackground(1, "evergreen.png");
		createObject(1, 600,290,45,45,"treasure2.png", "Look", "Talk", "Open", "lookChest", "talkChest", "openChest");
		createObject(1, 275,205,150,150,"knight2.png", "Look", "Talk", "Attack", "lookGuard","talkGuard", "attackGuard");
		createObject(1, 400,200,150,126,"hut3.png", "Look","Talk","Rest", "lookHut", "talkHut", "restHut");
		createArrowButton(1,0,150,50,50,"left-arrow1.png", "goScene2");
		bgPanel[1].add(bgLabel[1]);
		
		//SCENE 2
		
		createBackground(2, "cave-outside2.jpg");
		createObject(2, 0,100,100,300,"blankimage.png", "Look", "Talk", "Enter", "lookCave", "talkCave", "enterCave");
		createObject(2,355,250,50,50,"magic1.png", "Look", "Talk", "Search", "lookRoot", "talkRoot", "searchRoot");
		createArrowButton(2,650,150,50,50,"right-arrow1.png", "goScene1");
		bgPanel[2].add(bgLabel[2]);
		
	}
	
}
