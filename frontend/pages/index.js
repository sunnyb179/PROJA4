import Link from 'next/link';

function HomePage() {
  return (
    <div>
      <h1>Project03</h1>
      <Link href="/fetch-data">
        Fetch Data
      </Link>
    </div>
  );
}

export default HomePage;
