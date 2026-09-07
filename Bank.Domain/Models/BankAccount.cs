namespace Bank.Domain.Models
{
    public class BankAccount
    {
        private readonly string m_customerName;
        private double m_balance;

        public BankAccount(string customerName, double balance)
        {
            ArgumentNullException.ThrowIfNull(customerName);

            m_customerName = customerName;
            m_balance = balance;
        }

        public string CustomerName
        {
            get { return m_customerName; }
        }

        public double Balance
        {
            get { return m_balance; }
        }

        public void Debit(double amount)
        {
            ArgumentOutOfRangeException.ThrowIfNegative(amount);
            ArgumentOutOfRangeException.ThrowIfGreaterThan(amount, m_balance);

            m_balance -= amount;
        }

        public void Credit(double amount)
        {
            ArgumentOutOfRangeException.ThrowIfNegative(amount);

            m_balance += amount;
        }
    }
}