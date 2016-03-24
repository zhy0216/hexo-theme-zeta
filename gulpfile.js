var gulp = require('gulp');
var ghPages = require('gulp-gh-pages');
 
gulp.task('deploy', function() {
  return gulp.src('./hexo-test/public/**/*')
    .pipe(ghPages());
});

gulp.task("default", ['deploy']);