using System.Data.SqlClient;

namespace ADO.NETEmployeeDB
{
    class Program
    {
        static void Main(string[] args)
        {
            string connectionString = @"Data Source = (localdb)\MSSQLLocalDB; Database = EmployeeDB; Integrated Security = True";
            SqlConnection connection = new SqlConnection(connectionString);
            connection.Open();
            string query = "insert into Employees values('John Doe', 'John@gmail.com', 1950)";
            SqlCommand insertCommand = new SqlCommand(query, connection);
            insertCommand.ExecuteNonQuery();
            connection.Close();
        }
    }
}