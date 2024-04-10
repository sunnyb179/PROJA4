import axios from 'axios';

function FetchDataPage({ data }) {
  if (!data) {
    return <p>Loading...</p>;
  }
  return (
    <div>
      <h1>Customer Data</h1>
      {/*<table>
        <thead>
          <tr>
            <th>Name</th>
            <th>Email</th>
          </tr>
        </thead>
        <tbody>
          {data.map((customer, index) => (
            <tr key={index}>
              <td>{customer.name}</td>
              <td>{customer.email}</td>
            </tr>
          ))}
        </tbody>
          </table>*/}
    </div>
  );
}

export async function getServerSideProps() {
  // Fetch data from FastAPI endpoint
  const response = await axios.get('http://backend:8000/fetch-data');
  console.log(response.data);
  const data = response.data;

  return {
    props: { data }
  };
}

export default FetchDataPage;
