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
            GetData("SELECT * FROM UserInfo");
        }
    }
}
