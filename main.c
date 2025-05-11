/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: urabex <urabex@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/05/11 19:50:02 by urabex            #+#    #+#             */
/*   Updated: 2025/05/11 19:53:13 by urabex           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "includes/libasm.h"
#include <stdio.h>
#include <string.h>
#include <stdlib.h> 

int main(void) {
    char    buf[100];
    char    *str;

    printf("ft_strlen: %zu\n", ft_strlen("Hello"));

    ft_strcpy(buf, "Hello");
    printf("ft_strcpy: %s\n", buf);

    printf("ft_strcmp: %d\n", ft_strcmp("abc", "abd"));

    ft_write(1, "ft_write: OK\n", 13);

    ft_read(0, buf, 5); buf[5] = '\0';
    printf("ft_read: %s\n", buf);

    str = ft_strdup("dup this");
    printf("ft_strdup: %s\n", str);

    free(str);
    return 0;
}
