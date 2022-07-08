package pckg1;

import java.awt.BorderLayout;
import java.awt.EventQueue;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;
import javax.swing.JLabel;
import javax.swing.JTextField;
import javax.swing.JButton;
import java.awt.Color;
import javax.swing.JCheckBox;
import java.awt.Font;
import javax.swing.ImageIcon;
import javax.swing.border.SoftBevelBorder;
import javax.swing.border.BevelBorder;
import javax.swing.border.TitledBorder;
import javax.swing.border.CompoundBorder;
import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;
import javax.swing.SwingConstants;

public class MainFrame extends JFrame {

	private JPanel contentPane;
	private JTextField weightText;
	private JTextField heightText;
	private JTextField bmiText;
	private JTextField heightTextin;

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					MainFrame frame = new MainFrame();
					frame.setVisible(true);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		});
	}

	/**
	 * Create the frame.
	 */
	public MainFrame() {
		setTitle("BMI Calculator");
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 877, 738);
		contentPane = new JPanel();
		contentPane.setBorder(new TitledBorder(null, "", TitledBorder.LEADING, TitledBorder.TOP, null, null));
		contentPane.setBackground(new Color(56, 182, 255));
		setContentPane(contentPane);
		contentPane.setLayout(null);
		
		JButton btnNewButton_1_1 = new JButton("Exit");
		btnNewButton_1_1.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				System.exit(0);
			}
		});
		btnNewButton_1_1.setForeground(new Color(255, 255, 255));
		btnNewButton_1_1.setBackground(new Color(196, 0, 0));
		btnNewButton_1_1.setFont(new Font("Trebuchet MS", Font.PLAIN, 18));
		btnNewButton_1_1.setBounds(745, 631, 93, 45);
		contentPane.add(btnNewButton_1_1);
		
		JPanel panel = new JPanel();
		panel.setBorder(new CompoundBorder());
		panel.setForeground(new Color(56, 182, 255));
		panel.setBackground(new Color(56, 182, 255));
		panel.setBounds(39, 95, 765, 259);
		contentPane.add(panel);
		panel.setLayout(null);
		
		JLabel lblNewLabel_1 = new JLabel("Weight (lbs)");
		lblNewLabel_1.setFont(new Font("Tahoma", Font.PLAIN, 16));
		lblNewLabel_1.setBounds(20, 36, 99, 25);
		panel.add(lblNewLabel_1);
		
		JLabel lblNewLabel = new JLabel("Height");
		lblNewLabel.setFont(new Font("Tahoma", Font.PLAIN, 16));
		lblNewLabel.setBounds(20, 86, 54, 24);
		panel.add(lblNewLabel);
		
		weightText = new JTextField();
		weightText.setFont(new Font("Tahoma", Font.PLAIN, 16));
		weightText.setBounds(129, 33, 69, 31);
		panel.add(weightText);
		weightText.setColumns(10);
		
		heightText = new JTextField();
		heightText.setFont(new Font("Tahoma", Font.PLAIN, 16));
		heightText.setBounds(129, 86, 69, 30);
		panel.add(heightText);
		heightText.setColumns(10);
		
		bmiText = new JTextField();
		bmiText.setHorizontalAlignment(SwingConstants.CENTER);
		bmiText.setFont(new Font("Tahoma", Font.BOLD, 70));
		bmiText.setColumns(10);
		bmiText.setBounds(513, 113, 227, 112);
		panel.add(bmiText);
		
		JLabel lblNewLabel_1_1 = new JLabel("Your BMI");
		lblNewLabel_1_1.setFont(new Font("Tahoma", Font.BOLD, 24));
		lblNewLabel_1_1.setBounds(571, 36, 121, 46);
		panel.add(lblNewLabel_1_1);
		
		JButton btnNewButton_1 = new JButton("Clear");
		btnNewButton_1.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				weightText.setText("");
				heightText.setText("");
				heightTextin.setText("");
				bmiText.setText("");
				
				
			}
		});
		btnNewButton_1.setBounds(207, 157, 187, 60);
		panel.add(btnNewButton_1);
		btnNewButton_1.setForeground(new Color(0, 0, 160));
		btnNewButton_1.setBackground(new Color(233, 238, 245));
		btnNewButton_1.setFont(new Font("Trebuchet MS", Font.PLAIN, 24));
		
		JButton btnNewButton = new JButton("Calculate");
		btnNewButton.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				double h = Double.parseDouble(heightText.getText());
				double i = Double.parseDouble(heightTextin.getText());
				double j = (h*12)+i;
				double w = Double.parseDouble(weightText.getText());
				double bmi = (w * 703)/(j*j);
				
				String cal = String.format("%.2f", bmi);
				
				bmiText.setText(cal);
				//if (bmi <= 18.5)
			}
		});
		btnNewButton.setBounds(11, 157, 187, 60);
		panel.add(btnNewButton);
		btnNewButton.setForeground(new Color(0, 0, 160));
		btnNewButton.setBackground(new Color(233, 238, 245));
		btnNewButton.setFont(new Font("Trebuchet MS", Font.PLAIN, 24));
		
		JLabel ftWord = new JLabel("ft");
		ftWord.setFont(new Font("Tahoma", Font.PLAIN, 16));
		ftWord.setBounds(96, 92, 23, 24);
		panel.add(ftWord);
		
		JLabel inWord = new JLabel("in");
		inWord.setBounds(217, 92, 33, 24);
		panel.add(inWord);
		inWord.setFont(new Font("Tahoma", Font.PLAIN, 16));
		
		heightTextin = new JTextField();
		heightTextin.setFont(new Font("Tahoma", Font.PLAIN, 16));
		heightTextin.setColumns(10);
		heightTextin.setBounds(240, 83, 82, 30);
		panel.add(heightTextin);
		
		JLabel lblNewLabel_2 = new JLabel("");
		lblNewLabel_2.setIcon(new ImageIcon("C:\\Users\\valor\\Downloads\\_18.5 (1) (1) (1).png"));
		lblNewLabel_2.setBounds(29, 405, 706, 259);
		contentPane.add(lblNewLabel_2);
		
		JLabel lblNewLabel_3 = new JLabel("Body Mass Index");
		lblNewLabel_3.setBounds(214, 23, 456, 62);
		contentPane.add(lblNewLabel_3);
		lblNewLabel_3.setFont(new Font("Tahoma", Font.BOLD, 50));
	}
}
