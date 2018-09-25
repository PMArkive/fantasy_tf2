-- Deploy fantasy_tf2:performance to pg

begin;

    create table performance
        ( map text not null
        , player text not null
        , statistic text not null
        , value float not null default 0
        , primary key (map, player, statistic)
        , foreign key (map) references map
        , foreign key (player) references player
        );

commit;
