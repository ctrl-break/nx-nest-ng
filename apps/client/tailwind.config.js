import { createGlobPatternsForDependencies } from '@nx/angular/tailwind';
import { join } from 'path';

/** @type {import('tailwindcss').Config} */
export const content = [join(__dirname, 'src/**/!(*.stories|*.spec).{ts,html}'), ...createGlobPatternsForDependencies(__dirname)];
export const theme = {
	extend: {},
};
// eslint-disable-next-line import/no-extraneous-dependencies
export const plugins = [require('@tailwindcss/forms')];
