const preview = {
  parameters: {
    controls: {
      matchers: {
        color: /(background|color)$/i,
        date: /Date$/i,
      },
    },
    server: {
      url: `http://localhost:3000/rails/view_components`,
    },
  },
};
export default preview;
