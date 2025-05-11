/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: urabex <urabex@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/05/11 19:50:02 by urabex            #+#    #+#             */
/*   Updated: 2025/05/11 21:41:41 by urabex           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "includes/libasm.h"
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <unistd.h>
#include <errno.h>

int main(void) {
    char    buf[100];
    char    *str;
    ssize_t ret;

    // strlen
    printf("ft_strlen(\"Hello\"): %zu\n", ft_strlen("Hello"));

    // strcpy
    ft_strcpy(buf, "Hello");
    printf("ft_strcpy: %s\n", buf);

    // strcmp
    printf("ft_strcmp(\"abc\", \"abd\"): %d\n", ft_strcmp("abc", "abd"));
    printf("ft_strcmp(\"abc\", \"abc\"): %d\n", ft_strcmp("abc", "abc"));
    printf("ft_strcmp(\"abd\", \"abc\"): %d\n", ft_strcmp("abd", "abc"));

    // write
    ret = ft_write(1, "ft_write: OK\n", 13);
    if (ret == -1)
        perror("ft_write");

    // write error test
    ret = ft_write(-1, "error", 5);
    if (ret == -1)
        perror("ft_write (error)");

    // read
    printf("Type 5 characters: ");
    fflush(stdout);
    ret = ft_read(0, buf, 5);
    if (ret == -1)
        perror("ft_read");
    else {
        buf[ret] = '\0';
        printf("ft_read: %s\n", buf);
    }

    // read error test
    ret = ft_read(-1, buf, 5);
    if (ret == -1)
        perror("ft_read (error)");

    // strdup
    str = ft_strdup("dup this");
    if (!str) {
        perror("ft_strdup");
        return 1;
    }
    printf("ft_strdup: %s\n", str);
    free(str);

    return 0;
}
