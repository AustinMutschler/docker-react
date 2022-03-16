import { render, screen } from '@testing-library/react';
import App from './App';

test('renders my name link', () => {
  render(<App />);
  const linkElement = screen.getByText(/my name/i);
  expect(linkElement).toBeInTheDocument();
});
