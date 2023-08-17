#include <config.h>
#include "ftpd.h"

int main(int argc, char *argv[])
{
    char *cmd="-l /etc";
    // dolist(cmd, 0);
    return pureftpd_start(argc, argv, NULL);
}
