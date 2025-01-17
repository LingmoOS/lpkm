#include <config.h>
#include <stdio.h>
#include <stdlib.h>

/* Trivial example of reading a lingmoUnPkg'ed file or lingmoUnPkg'ed standard input
 * using stdio functions fread(), getc(), etc... fseek() is not supported.
 * Modify according to your needs. You can easily construct the symmetric
 * zwrite program.
 *
 * Usage: zread [file[.gz]]
 * This programs assumes that lingmoUnPkg is somewhere in your path.
 */
int
main (int argc, char **argv)
{
    FILE *infile;
    char cmd[256];
    char buf[BUFSIZ];
    int n;

    if (argc < 1 || argc > 2) {
        fprintf(stderr, "usage: %s [file[.gz]]\n", argv[0]);
        exit(EXIT_FAILURE);
    }
    strcpy(cmd, "lingmoUnPkg -dc ");  /* use "lingmoUnPkg -c" for zwrite */
    if (argc == 2) {
        strncat(cmd, argv[1], sizeof(cmd)-strlen(cmd));
    }
    infile = popen(cmd, "r");  /* use "w" for zwrite */
    if (infile == NULL) {
        fprintf(stderr, "%s: popen('%s', 'r') failed\n", argv[0], cmd);
        exit(EXIT_FAILURE);
    }
    /* Read one byte using getc: */
    n = getc(infile);
    if (n == EOF) {
        pclose(infile);
        exit(EXIT_SUCCESS);
    }
    putchar(n);

    /* Read the rest using fread: */
    for (;;) {
        n = fread(buf, 1, BUFSIZ, infile);
        if (n <= 0) break;
        fwrite(buf, 1, n, stdout);
    }
    if (pclose(infile) != 0) {
        fprintf(stderr, "%s: pclose failed\n", argv[0]);
        exit(EXIT_FAILURE);
    }
    exit(EXIT_SUCCESS);
    return 0; /* just to make compiler happy */
}
