module.exports = {
	parser: '@typescript-eslint/parser',
	parserOptions: {
		project: 'tsconfig.base.json',
		tsconfigRootDir: __dirname,
		sourceType: 'module',
	},
	plugins: ['@nx', '@typescript-eslint/eslint-plugin'],
	extends: [
		'plugin:@typescript-eslint/recommended',
		'airbnb-typescript/base',
		'plugin:import/recommended',
		'plugin:prettier/recommended',
	],
	root: true,
	env: {
		node: true,
		jest: true,
	},
	ignorePatterns: ['.eslintrc.js', 'dist/**', '*.js'],
	rules: {
		'import/no-extraneous-dependencies': ['error', { devDependencies: true }],
		'import/named': 'off',
	},
};
