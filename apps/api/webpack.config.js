// eslint-disable-next-line @typescript-eslint/no-var-requires
const swcDefaultConfig = require('@nestjs/cli/lib/compiler/defaults/swc-defaults').swcDefaultsFactory().swcOptions;

module.exports = {
	module: {
		rules: [
			{
				test: /\.ts$/,
				exclude: /node_modules/,
				use: {
					loader: 'swc-loader',
					options: swcDefaultConfig,
				},
			},
		],
	},
};

// eslint-disable-next-line @typescript-eslint/no-var-requires
// const { composePlugins, withNx } = require('@nx/webpack');

// // Nx plugins for webpack.
// module.exports = composePlugins(
// 	withNx({
// 		target: 'node',
// 	}),
// 	(config) => {
// 		// Update the webpack config as needed here.
// 		// e.g. `config.plugins.push(new MyPlugin())`
// 		return config;
// 	},
// );
