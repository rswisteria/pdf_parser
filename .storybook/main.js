/** @type { import('@storybook/server-webpack5').StorybookConfig } */
const config = {
  stories: ["../spec/components/stories/**/*.mdx", "../spec/components/stories/**/*.stories.@(json|yaml|yml)"],
  addons: [
    "@storybook/addon-webpack5-compiler-swc",
    "@storybook/addon-essentials",
    "@chromatic-com/storybook",
  ],
  framework: {
    name: "@storybook/server-webpack5",
    options: {},
  },
};
export default config;
