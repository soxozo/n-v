'use client';

import { useState, useEffect } from 'react';
import FormNewCandidate from '@/components/Form_newcandidate';

export default function CandidatePage() {
  const [candidates, setCandidates] = useState([]);
  const [showForm, setShowForm] = useState(false);

  useEffect(() => {
    const fetchCandidates = async () => {
      const res = await fetch('/api/candidateview');
      const data = await res.json();
      setCandidates(data);
    };

    fetchCandidates();
  }, []);

  return (
    <div>
      <button onClick={() => setShowForm(true)}>Add Candidate</button>
      {showForm && <FormNewCandidate onClose={() => setShowForm(false)} />}
      <table>
        <thead>
          <tr>
            <th>Name</th>
            <th>Surname</th>
            <th>Email</th>
            <th>Mobile</th>
            <th>Position</th>
            <th>Gender</th>
          </tr>
        </thead>
        <tbody>
          {candidates.map((candidate) => (
            <tr key={candidate.id}>
              <td>{candidate.name}</td>
              <td>{candidate.surname}</td>
              <td>{candidate.email}</td>
              <td>{candidate.mobile}</td>
              <td>{candidate.position}</td>
              <td>{candidate.gender}</td>
            </tr>
          ))}
        </tbody>
      </table>
    </div>
  );
}
