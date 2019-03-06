/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   filler.h                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: dstepane <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/03/02 17:28:10 by dstepane          #+#    #+#             */
/*   Updated: 2019/03/02 17:28:12 by dstepane         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef FILLER_H
# define FILLER_H

# include "./libft/includes/libft.h"

typedef struct			s_flr
{
	char				*line;
	char				me;
	char				foe;
	int					map_h;
	int					map_w;
	char				**map;
	int					fig_h;
	int					fig_w;
	char				**fig;

} 						t_flr;

void					del_arr(char **arr);
void					del_map(t_flr *f);

#endif