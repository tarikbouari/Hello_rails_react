const baseURL = 'http://localhost:3000/greetings/';
const randomGreeting = `${baseURL}random_greeting`;

const api = {
  fetchRandomGreeeting: async () => {
    const response = await fetch(randomGreeting);
    const { message:greeting } = await response.json();

    return greeting;
  },
};
export default api;