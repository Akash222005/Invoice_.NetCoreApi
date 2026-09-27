namespace Invoice.DAL.Test;

public static class TestDatabase
{

    public static string ConnectionString =>

        Environment.GetEnvironmentVariable("TEST_DB_CONNECTION")

        ?? "Server=DESKTOP-L49SQD0\\SQLEXPRESS,1435\r\n ;" +

           "Database=Invoice_Test;" +

           "User Id=sa;" +

           "Password=123456;" +

           "Encrypt=False;" +

           "TrustServerCertificate=True";

}