using CrowdFunding.DAL.Mappers;
using CrowdFunding.DAL.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ToolBox.ADO;

namespace CrowdFunding.DAL.Repositories.Implementations
{
    public class UserRepository : BaseRepository, IUserRepository<int, UserDAL>
    {
        public UserDAL Check(UserDAL user)
        {
            /*string sqlQueryLogin = "SELECT id, [login], email, first_name, last_name, salt, role FROM [User] WHERE [login] = @identifier AND encoded_password = dbo.SF_HashPassword(@password, salt)";
            string sqlQueryEmail = "SELECT id, [login], email, first_name, last_name, salt, role FROM [User] WHERE email = @identifier AND encoded_password = dbo.SF_HashPassword(@password, salt)";

            Command command = new Command((user.login != null) ? sqlQueryLogin : sqlQueryEmail);
            command.AddParameter("identifier", user.login ?? user.email);
            command.AddParameter("password", user.password);
            */

            Command command = new Command("CSP_CheckUser");
            command.AddParameter("Email", user.email);
            command.AddParameter("Login", user.login);
            command.AddParameter("Password", user.password);

            return _connection.ExecuteReader(command, (reader) => reader.ToUserDAL()).SingleOrDefault();
        }

        public bool Delete(int id)
        {
            /*Command command = new Command("DELETE FROM [User] WHERE id = @id");
            command.AddParameter("id", id);
            */
            Command command = new Command("CSP_DeleteUser");
            command.AddParameter("UserId", id);
            return _connection.ExecuteNonQuery(command) > 0;
        }

        public IEnumerable<UserDAL> GetAll()
        {
            //Command command = new Command("SELECT id, [login], email, last_name, first_name, salt, role FROM [User]");

            Command command = new Command("CSP_GetAllUsers");
            return _connection.ExecuteReader(command, (reader) => reader.ToUserDAL());
        }

        public UserDAL GetById(int id)
        {
            //Command command = new Command("SELECT id, [login], email, last_name, first_name, salt, role FROM [User] WHERE id = @id");
            Command command = new Command("CSP_GetUserById");
            command.AddParameter("UserId", id);
            return _connection.ExecuteReader(command, (reader) => reader.ToUserDAL()).SingleOrDefault();
        }

        public int Insert(UserDAL entity)
        {
            //Command command = new Command("INSERT INTO [User]([login], email, last_name, first_name, encoded_password, salt, role) OUTPUT INSERTED.id VALUES(@login, @email, @last_name, @first_name, dbo.SF_HashPassword(@password, @salt), @salt, @role)");

            Command command = new Command("CSP_AddUser");
            command.AddParameter("Login", entity.login);
            command.AddParameter("Email", entity.email);
            command.AddParameter("LastName", entity.last_name);
            command.AddParameter("FirstName", entity.first_name);
            command.AddParameter("Password", entity.password);
            command.AddParameter("BirthDate", (object)entity.birth_date ?? DBNull.Value);
            //command.AddParameter("Salt", entity.login + entity.last_name);
            command.AddParameter("Role", entity.role);
            return (int)_connection.ExecuteScalar(command);
        }

        public bool Update(int id, UserDAL entity)
        {
            //Command command = new Command("UPDATE [User] SET last_name = @last_name, first_name = @first_name, role = @role WHERE id = @id");
            Command command = new Command("CSP_UpdateUser");
            command.AddParameter("UserId", id);
            command.AddParameter("LastName", entity.last_name);
            command.AddParameter("FirstName", entity.first_name);
            command.AddParameter("BirthDate", (object)entity.birth_date ?? DBNull.Value);
            command.AddParameter("Role", entity.role);
            return _connection.ExecuteNonQuery(command) > 0;
        }
    }
}
