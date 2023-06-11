using System.Data.SqlClient;

namespace ADO.NETEmployeeDB
{
    class Program
    {
        static void Main(string[] args)
        {
            string connectionString = @"Data Source = (localdb)\MSSQLLocalDB; Database = EmployeeDB; Integrated Security = True";
            SqlConnection connection = new SqlConnection(connectionString);
            
            bool flag = true;
            while (flag)
            {
                Console.WriteLine("\nChoose option to perform \n1.Insert(Create) database \n2.Update records \n3.Exit");
                int option = Convert.ToInt32(Console.ReadLine());
                switch (option)
                {
                    case 1:
                        Console.WriteLine("Enter name");
                        string name = Console.ReadLine();
                        Console.WriteLine("Enter email");
                        string email = Console.ReadLine();
                        Console.WriteLine("Enter salary");
                        double salary = Convert.ToDouble(Console.ReadLine());

                        connection.Open();
                        string query = $"insert into Employees values('{name}', '{email}', {salary})";
                        SqlCommand insertCommand = new SqlCommand(query, connection);
                        insertCommand.ExecuteNonQuery();
                        connection.Close();
                        break;
                    case 2:
                        Console.WriteLine("Enter Employee name to update salary");
                        string employeeName = Console.ReadLine();
                        Console.WriteLine("Enter salary to update");
                        double updatedSalary = Convert.ToDouble(Console.ReadLine());

                        connection.Open();
                        string updateQuery = $"update employees set Salary = {updatedSalary} where EmployeeName = '{employeeName}'";
                        SqlCommand updateCommand = new SqlCommand(updateQuery, connection);
                        updateCommand.ExecuteNonQuery();
                        connection.Close();
                        break;
                    case 3:
                        flag = false;
                        break;
                }
            }
        }
    }
}