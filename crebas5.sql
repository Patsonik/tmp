/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2008                    */
/* Created on:     06.05.2023 13:01:51                          */
/*==============================================================*/


if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('lot') and o.name = 'FK_LOT_1_PILOT_ZALOGA')
alter table lot
   drop constraint FK_LOT_1_PILOT_ZALOGA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('lot') and o.name = 'FK_LOT_KAPITAN_ZALOGA')
alter table lot
   drop constraint FK_LOT_KAPITAN_ZALOGA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('lot') and o.name = 'FK_LOT_LOT_SAM_SAMOLOT')
alter table lot
   drop constraint FK_LOT_LOT_SAM_SAMOLOT
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('lot') and o.name = 'FK_LOT_PRZYLOT_DESTYNAC')
alter table lot
   drop constraint FK_LOT_PRZYLOT_DESTYNAC
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('lot') and o.name = 'FK_LOT_STEW_ZALOGA')
alter table lot
   drop constraint FK_LOT_STEW_ZALOGA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('lot') and o.name = 'FK_LOT_SZEF_POK_ZALOGA')
alter table lot
   drop constraint FK_LOT_SZEF_POK_ZALOGA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('lot') and o.name = 'FK_LOT_WYLOT_DESTYNAC')
alter table lot
   drop constraint FK_LOT_WYLOT_DESTYNAC
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('lot_pas') and o.name = 'FK_LOT_PAS_REFERENCE_NR_MIEJS')
alter table lot_pas
   drop constraint FK_LOT_PAS_REFERENCE_NR_MIEJS
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('lot_pas') and o.name = 'FK_LOT_PAS_LOT_PAS_LOT')
alter table lot_pas
   drop constraint FK_LOT_PAS_LOT_PAS_LOT
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('lot_pas') and o.name = 'FK_LOT_PAS_LOT_PAS2_PASAZER')
alter table lot_pas
   drop constraint FK_LOT_PAS_LOT_PAS2_PASAZER
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('miejs_sam') and o.name = 'FK_MIEJS_SA_MIEJS_SAM_NR_MIEJS')
alter table miejs_sam
   drop constraint FK_MIEJS_SA_MIEJS_SAM_NR_MIEJS
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('miejs_sam') and o.name = 'FK_MIEJS_SA_MIEJS_SAM_SAMOLOT')
alter table miejs_sam
   drop constraint FK_MIEJS_SA_MIEJS_SAM_SAMOLOT
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('model_sam') and o.name = 'FK_MODEL_SA_PRODUCENT_PRODUCEN')
alter table model_sam
   drop constraint FK_MODEL_SA_PRODUCENT_PRODUCEN
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('samolot') and o.name = 'FK_SAMOLOT_LINIA_LINIA')
alter table samolot
   drop constraint FK_SAMOLOT_LINIA_LINIA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('samolot') and o.name = 'FK_SAMOLOT_MODEL_MODEL_SA')
alter table samolot
   drop constraint FK_SAMOLOT_MODEL_MODEL_SA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('uprawnienia') and o.name = 'FK_UPRAWNIE_FUNKCJA_FUNKCJA')
alter table uprawnienia
   drop constraint FK_UPRAWNIE_FUNKCJA_FUNKCJA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('uprawnienia') and o.name = 'FK_UPRAWNIE_FUNKCJA_S_MODEL_SA')
alter table uprawnienia
   drop constraint FK_UPRAWNIE_FUNKCJA_S_MODEL_SA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('zal_fun') and o.name = 'FK_ZAL_FUN_ZAL_FUN_UPRAWNIE')
alter table zal_fun
   drop constraint FK_ZAL_FUN_ZAL_FUN_UPRAWNIE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('zal_fun') and o.name = 'FK_ZAL_FUN_ZAL_FUN2_ZALOGA')
alter table zal_fun
   drop constraint FK_ZAL_FUN_ZAL_FUN2_ZALOGA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('zaloga') and o.name = 'FK_ZALOGA_ZAL_LINIA_LINIA')
alter table zaloga
   drop constraint FK_ZALOGA_ZAL_LINIA_LINIA
go

if exists (select 1
            from  sysobjects
           where  id = object_id('destynacja')
            and   type = 'U')
   drop table destynacja
go

if exists (select 1
            from  sysobjects
           where  id = object_id('funkcja')
            and   type = 'U')
   drop table funkcja
go

if exists (select 1
            from  sysobjects
           where  id = object_id('linia')
            and   type = 'U')
   drop table linia
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('lot')
            and   name  = 'przylot_FK'
            and   indid > 0
            and   indid < 255)
   drop index lot.przylot_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('lot')
            and   name  = 'wylot_FK'
            and   indid > 0
            and   indid < 255)
   drop index lot.wylot_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('lot')
            and   name  = 'stew_FK'
            and   indid > 0
            and   indid < 255)
   drop index lot.stew_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('lot')
            and   name  = 'szef_pok_FK'
            and   indid > 0
            and   indid < 255)
   drop index lot.szef_pok_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('lot')
            and   name  = '1_pilot_FK'
            and   indid > 0
            and   indid < 255)
   drop index lot.1_pilot_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('lot')
            and   name  = 'kapitan_FK'
            and   indid > 0
            and   indid < 255)
   drop index lot.kapitan_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('lot')
            and   name  = 'lot_sam_FK'
            and   indid > 0
            and   indid < 255)
   drop index lot.lot_sam_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('lot')
            and   type = 'U')
   drop table lot
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('lot_pas')
            and   name  = 'lot_pas2_FK'
            and   indid > 0
            and   indid < 255)
   drop index lot_pas.lot_pas2_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('lot_pas')
            and   name  = 'lot_pas_FK'
            and   indid > 0
            and   indid < 255)
   drop index lot_pas.lot_pas_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('lot_pas')
            and   type = 'U')
   drop table lot_pas
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('miejs_sam')
            and   name  = 'miejs_sam2_FK'
            and   indid > 0
            and   indid < 255)
   drop index miejs_sam.miejs_sam2_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('miejs_sam')
            and   name  = 'miejs_sam_FK'
            and   indid > 0
            and   indid < 255)
   drop index miejs_sam.miejs_sam_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('miejs_sam')
            and   type = 'U')
   drop table miejs_sam
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('model_sam')
            and   name  = 'producent_FK'
            and   indid > 0
            and   indid < 255)
   drop index model_sam.producent_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('model_sam')
            and   type = 'U')
   drop table model_sam
go

if exists (select 1
            from  sysobjects
           where  id = object_id('nr_miejsca')
            and   type = 'U')
   drop table nr_miejsca
go

if exists (select 1
            from  sysobjects
           where  id = object_id('pasazer')
            and   type = 'U')
   drop table pasazer
go

if exists (select 1
            from  sysobjects
           where  id = object_id('producenci_sam')
            and   type = 'U')
   drop table producenci_sam
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('samolot')
            and   name  = 'linia_FK'
            and   indid > 0
            and   indid < 255)
   drop index samolot.linia_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('samolot')
            and   name  = 'model_FK'
            and   indid > 0
            and   indid < 255)
   drop index samolot.model_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('samolot')
            and   type = 'U')
   drop table samolot
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('uprawnienia')
            and   name  = 'funkcja_FK'
            and   indid > 0
            and   indid < 255)
   drop index uprawnienia.funkcja_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('uprawnienia')
            and   name  = 'funkcja_sam_FK'
            and   indid > 0
            and   indid < 255)
   drop index uprawnienia.funkcja_sam_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('uprawnienia')
            and   type = 'U')
   drop table uprawnienia
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('zal_fun')
            and   name  = 'zal_fun2_FK'
            and   indid > 0
            and   indid < 255)
   drop index zal_fun.zal_fun2_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('zal_fun')
            and   name  = 'zal_fun_FK'
            and   indid > 0
            and   indid < 255)
   drop index zal_fun.zal_fun_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('zal_fun')
            and   type = 'U')
   drop table zal_fun
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('zaloga')
            and   name  = 'zal_linia_FK'
            and   indid > 0
            and   indid < 255)
   drop index zaloga.zal_linia_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('zaloga')
            and   type = 'U')
   drop table zaloga
go

/*==============================================================*/
/* Table: destynacja                                            */
/*==============================================================*/
create table destynacja (
   id_destynacja        int                  not null,
   nazwa_destynacja     varchar(20)          not null,
   constraint PK_DESTYNACJA primary key nonclustered (id_destynacja)
)
go

/*==============================================================*/
/* Table: funkcja                                               */
/*==============================================================*/
create table funkcja (
   id_funkcja           int                  not null,
   nazwa_funkcja        varchar(150)         not null,
   constraint PK_FUNKCJA primary key nonclustered (id_funkcja)
)
go

/*==============================================================*/
/* Table: linia                                                 */
/*==============================================================*/
create table linia (
   id_linia             int                  not null,
   nazwa_linia          varchar(50)          not null,
   constraint PK_LINIA primary key nonclustered (id_linia)
)
go

/*==============================================================*/
/* Table: lot                                                   */
/*==============================================================*/
create table lot (
   id_lot               int                  not null,
   id_samolot           int                  not null,
   id_zaloga            int                  null,
   zal_id_zaloga        int                  null,
   zal_id_zaloga2       int                  not null,
   id_destynacja        int                  not null,
   des_id_destynacja    int                  not null,
   zal_id_zaloga3       int                  not null,
   identyfikator_lot    varchar(10)          not null,
   data_wylot           datetime             not null,
   data_przylot         datetime             not null,
   constraint PK_LOT primary key nonclustered (id_lot)
)
go

/*==============================================================*/
/* Index: lot_sam_FK                                            */
/*==============================================================*/
create index lot_sam_FK on lot (
id_samolot ASC
)
go

/*==============================================================*/
/* Index: kapitan_FK                                            */
/*==============================================================*/
create index kapitan_FK on lot (
zal_id_zaloga3 ASC
)
go

/*==============================================================*/
/* Index: 1_pilot_FK                                            */
/*==============================================================*/
create index 1_pilot_FK on lot (
zal_id_zaloga ASC
)
go

/*==============================================================*/
/* Index: szef_pok_FK                                           */
/*==============================================================*/
create index szef_pok_FK on lot (
zal_id_zaloga2 ASC
)
go

/*==============================================================*/
/* Index: stew_FK                                               */
/*==============================================================*/
create index stew_FK on lot (
id_zaloga ASC
)
go

/*==============================================================*/
/* Index: wylot_FK                                              */
/*==============================================================*/
create index wylot_FK on lot (
des_id_destynacja ASC
)
go

/*==============================================================*/
/* Index: przylot_FK                                            */
/*==============================================================*/
create index przylot_FK on lot (
id_destynacja ASC
)
go

/*==============================================================*/
/* Table: lot_pas                                               */
/*==============================================================*/
create table lot_pas (
   id_lot               int                  not null,
   id_pasazer           int                  not null,
   id_nr_miejsca        int                  null,
   constraint PK_LOT_PAS primary key (id_lot, id_pasazer)
)
go

/*==============================================================*/
/* Index: lot_pas_FK                                            */
/*==============================================================*/
create index lot_pas_FK on lot_pas (
id_lot ASC
)
go

/*==============================================================*/
/* Index: lot_pas2_FK                                           */
/*==============================================================*/
create index lot_pas2_FK on lot_pas (
id_pasazer ASC
)
go

/*==============================================================*/
/* Table: miejs_sam                                             */
/*==============================================================*/
create table miejs_sam (
   id_nr_miejsca        int                  not null,
   id_samolot           int                  not null,
   constraint PK_MIEJS_SAM primary key (id_nr_miejsca, id_samolot)
)
go

/*==============================================================*/
/* Index: miejs_sam_FK                                          */
/*==============================================================*/
create index miejs_sam_FK on miejs_sam (
id_nr_miejsca ASC
)
go

/*==============================================================*/
/* Index: miejs_sam2_FK                                         */
/*==============================================================*/
create index miejs_sam2_FK on miejs_sam (
id_samolot ASC
)
go

/*==============================================================*/
/* Table: model_sam                                             */
/*==============================================================*/
create table model_sam (
   id_model_sam         int                  not null,
   id_producenci_sam    int                  not null,
   nazwa_model_sam      varchar(50)          not null,
   constraint PK_MODEL_SAM primary key nonclustered (id_model_sam)
)
go

/*==============================================================*/
/* Index: producent_FK                                          */
/*==============================================================*/
create index producent_FK on model_sam (
id_producenci_sam ASC
)
go

/*==============================================================*/
/* Table: nr_miejsca                                            */
/*==============================================================*/
create table nr_miejsca (
   id_nr_miejsca        int                  not null,
   numer_miejsca        varchar(5)           not null,
   constraint PK_NR_MIEJSCA primary key nonclustered (id_nr_miejsca)
)
go

/*==============================================================*/
/* Table: pasazer                                               */
/*==============================================================*/
create table pasazer (
   id_pasazer           int                  not null,
   nazwisko_pasazer     varchar(50)          not null,
   imie_pasazer         varchar(50)          not null,
   constraint PK_PASAZER primary key nonclustered (id_pasazer)
)
go

/*==============================================================*/
/* Table: producenci_sam                                        */
/*==============================================================*/
create table producenci_sam (
   id_producenci_sam    int                  not null,
   nazwa_producenci_sam varchar(50)          not null,
   constraint PK_PRODUCENCI_SAM primary key nonclustered (id_producenci_sam)
)
go

/*==============================================================*/
/* Table: samolot                                               */
/*==============================================================*/
create table samolot (
   id_samolot           int                  not null,
   id_linia             int                  not null,
   id_model_sam         int                  not null,
   nr_samolotu          varchar(50)          not null,
   constraint PK_SAMOLOT primary key nonclustered (id_samolot)
)
go

/*==============================================================*/
/* Index: model_FK                                              */
/*==============================================================*/
create index model_FK on samolot (
id_model_sam ASC
)
go

/*==============================================================*/
/* Index: linia_FK                                              */
/*==============================================================*/
create index linia_FK on samolot (
id_linia ASC
)
go

/*==============================================================*/
/* Table: uprawnienia                                           */
/*==============================================================*/
create table uprawnienia (
   id_uprawnienia       int                  not null,
   id_funkcja           int                  not null,
   id_model_sam         int                  not null,
   constraint PK_UPRAWNIENIA primary key nonclustered (id_uprawnienia)
)
go

/*==============================================================*/
/* Index: funkcja_sam_FK                                        */
/*==============================================================*/
create index funkcja_sam_FK on uprawnienia (
id_model_sam ASC
)
go

/*==============================================================*/
/* Index: funkcja_FK                                            */
/*==============================================================*/
create index funkcja_FK on uprawnienia (
id_funkcja ASC
)
go

/*==============================================================*/
/* Table: zal_fun                                               */
/*==============================================================*/
create table zal_fun (
   id_uprawnienia       int                  not null,
   id_zaloga            int                  not null,
   constraint PK_ZAL_FUN primary key (id_uprawnienia, id_zaloga)
)
go

/*==============================================================*/
/* Index: zal_fun_FK                                            */
/*==============================================================*/
create index zal_fun_FK on zal_fun (
id_uprawnienia ASC
)
go

/*==============================================================*/
/* Index: zal_fun2_FK                                           */
/*==============================================================*/
create index zal_fun2_FK on zal_fun (
id_zaloga ASC
)
go

/*==============================================================*/
/* Table: zaloga                                                */
/*==============================================================*/
create table zaloga (
   id_zaloga            int                  not null,
   id_linia             int                  not null,
   nazwisko_zaloga      varchar(30)          not null,
   imie_zaloga          varchar(30)          not null,
   constraint PK_ZALOGA primary key nonclustered (id_zaloga)
)
go

/*==============================================================*/
/* Index: zal_linia_FK                                          */
/*==============================================================*/
create index zal_linia_FK on zaloga (
id_linia ASC
)
go

alter table lot
   add constraint FK_LOT_1_PILOT_ZALOGA foreign key (zal_id_zaloga)
      references zaloga (id_zaloga)
go

alter table lot
   add constraint FK_LOT_KAPITAN_ZALOGA foreign key (zal_id_zaloga3)
      references zaloga (id_zaloga)
go

alter table lot
   add constraint FK_LOT_LOT_SAM_SAMOLOT foreign key (id_samolot)
      references samolot (id_samolot)
go

alter table lot
   add constraint FK_LOT_PRZYLOT_DESTYNAC foreign key (id_destynacja)
      references destynacja (id_destynacja)
go

alter table lot
   add constraint FK_LOT_STEW_ZALOGA foreign key (id_zaloga)
      references zaloga (id_zaloga)
go

alter table lot
   add constraint FK_LOT_SZEF_POK_ZALOGA foreign key (zal_id_zaloga2)
      references zaloga (id_zaloga)
go

alter table lot
   add constraint FK_LOT_WYLOT_DESTYNAC foreign key (des_id_destynacja)
      references destynacja (id_destynacja)
go

alter table lot_pas
   add constraint FK_LOT_PAS_REFERENCE_NR_MIEJS foreign key (id_nr_miejsca)
      references nr_miejsca (id_nr_miejsca)
go

alter table lot_pas
   add constraint FK_LOT_PAS_LOT_PAS_LOT foreign key (id_lot)
      references lot (id_lot)
go

alter table lot_pas
   add constraint FK_LOT_PAS_LOT_PAS2_PASAZER foreign key (id_pasazer)
      references pasazer (id_pasazer)
go

alter table miejs_sam
   add constraint FK_MIEJS_SA_MIEJS_SAM_NR_MIEJS foreign key (id_nr_miejsca)
      references nr_miejsca (id_nr_miejsca)
go

alter table miejs_sam
   add constraint FK_MIEJS_SA_MIEJS_SAM_SAMOLOT foreign key (id_samolot)
      references samolot (id_samolot)
go

alter table model_sam
   add constraint FK_MODEL_SA_PRODUCENT_PRODUCEN foreign key (id_producenci_sam)
      references producenci_sam (id_producenci_sam)
go

alter table samolot
   add constraint FK_SAMOLOT_LINIA_LINIA foreign key (id_linia)
      references linia (id_linia)
go

alter table samolot
   add constraint FK_SAMOLOT_MODEL_MODEL_SA foreign key (id_model_sam)
      references model_sam (id_model_sam)
go

alter table uprawnienia
   add constraint FK_UPRAWNIE_FUNKCJA_FUNKCJA foreign key (id_funkcja)
      references funkcja (id_funkcja)
go

alter table uprawnienia
   add constraint FK_UPRAWNIE_FUNKCJA_S_MODEL_SA foreign key (id_model_sam)
      references model_sam (id_model_sam)
go

alter table zal_fun
   add constraint FK_ZAL_FUN_ZAL_FUN_UPRAWNIE foreign key (id_uprawnienia)
      references uprawnienia (id_uprawnienia)
go

alter table zal_fun
   add constraint FK_ZAL_FUN_ZAL_FUN2_ZALOGA foreign key (id_zaloga)
      references zaloga (id_zaloga)
go

alter table zaloga
   add constraint FK_ZALOGA_ZAL_LINIA_LINIA foreign key (id_linia)
      references linia (id_linia)
go

