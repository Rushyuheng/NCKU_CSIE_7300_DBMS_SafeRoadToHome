using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;

namespace SaftRoadToHomeDBMS
{
    public partial class Form1 : Form
    {
        //self defined function
        string[] sqlScript = new string[14] { @"SELECT Description,Address FROM BadRoad,GPS WHERE BadRoad.Longtitude = GPS.Longtitude AND BadRoad.Latitude = GPS.Latitude AND GPS.City = N'台南市';",
                                              @"DELETE FROM Message WHERE MessageID = 12; SELECT * FROM Message;",
                                              @"INSERT INTO Message VALUES(12,N'是在哈囉','2007-05-08 12:35:29.123'); SELECT * FROM Message;",
                                              @"UPDATE UserInfo SET AccountName = 'keepsleeping' WHERE Email = 'longstay@gmail'; SELECT * FROM UserInfo;",
                                              @"SELECT * FROM BadRoad WHERE Longtitude IN (SELECT Longtitude FROM GPS WHERE Longtitude < 24);",
                                              @"SELECT * FROM BadRoad WHERE Longtitude NOT IN (SELECT Longtitude FROM GPS WHERE Longtitude < 24);",
                                              @"SELECT Email FROM COMMENT WHERE EXISTS (SELECT Email FROM UserInfo WHERE COMMENT.Email = UserInfo.Email AND UserInfo.Age > 30);",
                                              @"SELECT Email FROM COMMENT WHERE NOT EXISTS (SELECT Email FROM UserInfo WHERE COMMENT.Email = UserInfo.Email AND UserInfo.Age > 30);",
                                              @"SELECT COUNT(*) FROM BadRoad,UserInfo WHERE UserInfo.Email = BadRoad.Email AND AccountName = 'jameskk';",
                                              @"SELECT SUM(OfficialLevel) FROM UserInfo,BELONG,Agency WHERE UserInfo.Email = BELONG.Email AND Agency.AgencyID = BELONG.AgencyID;",
                                              @"SELECT MAX(Date) FROM Message;",
                                              @"SELECT MIN(Latitude) FROM BadRoad;",
                                              @"SELECT AVG(Age) FROM UserInfo;",
                                              @"SELECT OfficialLevel,COUNT(*) FROM UserInfo,BELONG,Agency WHERE UserInfo.Email = BELONG.Email AND Agency.AgencyID = BELONG.AgencyID GROUP BY OfficialLevel HAVING COUNT(*) > 3;",
                                            };

        private void GetData(string selectCommand)
        {
            try
            {
                string connectionSetting = @"Data Source=(LocalDB)\MSSQLLocalDB;" +
                @"AttachDbFilename=E:\homework\110-1\DBMS\DBMS_FinalProject\SaftRoadToHomeDBMS\SaftRoadToHomeDBMS\RoadDB.mdf;" +
                @"Integrated Security=True";
                // Create a new data adapter based on the specified query.
                SqlDataAdapter dataAdapter = new SqlDataAdapter(selectCommand, connectionSetting);
                SqlCommandBuilder commandBuilder = new SqlCommandBuilder(dataAdapter);

                DataTable table = new DataTable
                {
                    Locale = System.Globalization.CultureInfo.InvariantCulture
                };
                dataAdapter.Fill(table);
                bindingSource1.DataSource = table;

                // Resize the DataGridView columns to fit the newly loaded content.
                dataGridView1.AutoResizeColumns(DataGridViewAutoSizeColumnsMode.AllCellsExceptHeader);
            }
            catch (SqlException)
            {
                MessageBox.Show("To run this example, replace the value of the " +
                    "connectionString variable with a connection string that is " +
                    "valid for your system.");
            }
        }

        // eventhandler
        public Form1()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            dataGridView1.DataSource = bindingSource1;
            comboBox1.SelectedIndex = 0;
        }

        private void queryBtn_Click(object sender, EventArgs e)
        {
            if (comboBox1.SelectedIndex == 0)
            {
                if (!String.IsNullOrEmpty(SQLTextBox.Text)) {
                    GetData(SQLTextBox.Text);
                }
                
            }
            else {
                GetData(sqlScript[comboBox1.SelectedIndex - 1]);
            }

        }

    }
}
