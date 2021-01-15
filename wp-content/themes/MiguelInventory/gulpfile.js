const gulp = require('gulp');
const gulpSass = require('gulp-sass');
const gulpConcat = require('gulp-concat');
const gulpPostcss = require('gulp-postcss');
const postcssPresetEnv = require('postcss-preset-env');
const autoprefixer = require('autoprefixer');
const del = require('del');
// const browserSync = require('browser-sync').create();

function css() {
  return gulp.src('assets/scss/style.scss', {sourcemaps: true})
    .pipe(gulpSass())
    .pipe(gulpPostcss([
            postcssPresetEnv(),
            autoprefixer(),
          ]))
    .pipe(gulp.dest('assets/stylesheets'))
    // .pipe(browserSync.stream())
}

function jsVendor() {
  return gulp.src('assets/javascript/vendor/**/*.js')
    .pipe(gulpConcat('vendor.js'))
    .pipe(gulp.dest('assets/javascript'))
}

function js() {
  return gulp.src('assets/javascript/custom/**/*.js')
    .pipe(gulpConcat('scripts.js'))
    .pipe(gulp.dest('assets/javascript'))
}

// function img() {
//   return gulp.src('src/assets/img/**/*.{jpeg,jpg,png,svg,gif,mp4,webm}')
//     .pipe(gulp.dest('dist/static/assets/img'))
// }



function watch(cb) {
  gulp.watch("assets/scss/**/*.scss", gulp.series(css));
  gulp.watch("assets/javascript/vendor/**/*.js", gulp.series(jsVendor));
  gulp.watch("assets/javascript/custom/**/*.js", gulp.series(js));
  cb();
}

// function serve(cb) {
//   browserSync.init({
//       server: {
//           baseDir: "dist/static/",
//       },
//       browser: "google chrome",
//       open: false,
//   });
//   cb();
// }

// function reload(cb) {
//   browserSync.reload();
//   cb();
// }

// function clean() {
//   return del('dist', {force: true});
// }


const build = gulp.parallel(css, jsVendor, js);

module.exports = {
  default: gulp.series(watch),
  watch: watch
};
