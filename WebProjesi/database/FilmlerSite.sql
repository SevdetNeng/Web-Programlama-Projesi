USE [master]
GO
/****** Object:  Database [FilmlerSite]    Script Date: 26.12.2021 16:38:56 ******/
CREATE DATABASE [FilmlerSite]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'FilmlerSite', FILENAME = N'C:\Users\sevdet\FilmlerSite.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'FilmlerSite_log', FILENAME = N'C:\Users\sevdet\FilmlerSite_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [FilmlerSite] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [FilmlerSite].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [FilmlerSite] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [FilmlerSite] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [FilmlerSite] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [FilmlerSite] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [FilmlerSite] SET ARITHABORT OFF 
GO
ALTER DATABASE [FilmlerSite] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [FilmlerSite] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [FilmlerSite] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [FilmlerSite] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [FilmlerSite] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [FilmlerSite] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [FilmlerSite] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [FilmlerSite] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [FilmlerSite] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [FilmlerSite] SET  ENABLE_BROKER 
GO
ALTER DATABASE [FilmlerSite] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [FilmlerSite] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [FilmlerSite] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [FilmlerSite] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [FilmlerSite] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [FilmlerSite] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [FilmlerSite] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [FilmlerSite] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [FilmlerSite] SET  MULTI_USER 
GO
ALTER DATABASE [FilmlerSite] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [FilmlerSite] SET DB_CHAINING OFF 
GO
ALTER DATABASE [FilmlerSite] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [FilmlerSite] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [FilmlerSite] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [FilmlerSite] SET QUERY_STORE = OFF
GO
USE [FilmlerSite]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [FilmlerSite]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 26.12.2021 16:38:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 26.12.2021 16:38:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 26.12.2021 16:38:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 26.12.2021 16:38:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 26.12.2021 16:38:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 26.12.2021 16:38:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 26.12.2021 16:38:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[kullaniciAdi] [nvarchar](30) NOT NULL,
	[sifre] [nvarchar](30) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 26.12.2021 16:38:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Filmler]    Script Date: 26.12.2021 16:38:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Filmler](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[filmIsmi] [nvarchar](50) NOT NULL,
	[filmTuru] [nvarchar](20) NOT NULL,
	[filmAciklamasi] [nvarchar](400) NOT NULL,
	[filmResimURL] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Filmler] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FilmYorumlari]    Script Date: 26.12.2021 16:38:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FilmYorumlari](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Kullanici] [nvarchar](max) NOT NULL,
	[Yorum] [nvarchar](150) NOT NULL,
	[FilmNumara] [int] NOT NULL,
	[puan] [nvarchar](max) NOT NULL,
	[yorumBaslik] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_FilmYorumlari] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KullaniciKataloglar]    Script Date: 26.12.2021 16:38:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KullaniciKataloglar](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[kullaniciAdi] [nvarchar](max) NOT NULL,
	[filmNumara] [int] NOT NULL,
 CONSTRAINT [PK_KullaniciKataloglar] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kullanicilar]    Script Date: 26.12.2021 16:38:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kullanicilar](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[kullaniciAdi] [nvarchar](max) NOT NULL,
	[sifre] [nvarchar](max) NOT NULL,
	[rol] [nvarchar](max) NULL,
 CONSTRAINT [PK_Kullanicilar] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211220145629_identity', N'5.0.12')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211221133206_roller', N'5.0.12')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211223144352_FilmYorum', N'5.0.12')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211224131527_KatalogEkleme', N'5.0.12')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211224140827_filmAciklamaGuncelleme', N'5.0.12')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211224140925_puanGuncelleme', N'5.0.12')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211224163228_DBgüncelleme', N'5.0.12')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211225142330_filmurl', N'5.0.12')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'173f2208-dd7b-4c93-aaab-98ee82628755', N'Kullanici', N'KULLANICI', N'28979906-b680-4012-863b-4118c81eefa4')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'6a805488-5dd7-459f-a9d3-158d39315c8e', N'Admin', N'ADMIN', N'77cde785-7de4-4756-8a4b-83d0f3b050f7')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'5cc65912-12cf-4c05-8e6d-66c14e4cfb5a', N'173f2208-dd7b-4c93-aaab-98ee82628755')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'643a0cc1-07c2-4c88-b662-d0127ecc46c7', N'173f2208-dd7b-4c93-aaab-98ee82628755')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'3fe4d30c-3087-4998-ac8b-e3ceaa48c808', N'6a805488-5dd7-459f-a9d3-158d39315c8e')
GO
INSERT [dbo].[AspNetUsers] ([Id], [kullaniciAdi], [sifre], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'3fe4d30c-3087-4998-ac8b-e3ceaa48c808', N'g191210082@sakarya.edu.tr', N'123', N'g191210082@sakarya.edu.tr', N'G191210082@SAKARYA.EDU.TR', N'g191210082@sakarya.edu.tr', N'G191210082@SAKARYA.EDU.TR', 0, N'AQAAAAEAACcQAAAAEAUFqr3GCaWlp9uNDVc+TxUtSNi3MsooTCOGUmw7YuKx9nZ+fjwNcP71yuO04wCT4w==', N'DNX7MMRSSZTYEBCCVRQHOGZUSYACZIF5', N'c03d45cc-0335-4191-9d3b-6697fd5dc826', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [kullaniciAdi], [sifre], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'5cc65912-12cf-4c05-8e6d-66c14e4cfb5a', N'Sevdet Işık', N'123456', N'sevdet.isik@ogr.sakarya.edu.tr', N'SEVDET.ISIK@OGR.SAKARYA.EDU.TR', N'sevdet.isik@ogr.sakarya.edu.tr', N'SEVDET.ISIK@OGR.SAKARYA.EDU.TR', 0, N'AQAAAAEAACcQAAAAEEnn7mdnDTTuhJjJpWQGqiKOja1nB9e1k709ilPHc5EwgeoQQQGNfUWH/2baJpnlvw==', N'KRJ62RFSMN53N7KM64VDUQIV24N53HVO', N'2543fef9-50ab-437f-93cb-e26b8bfc7f04', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [kullaniciAdi], [sifre], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'643a0cc1-07c2-4c88-b662-d0127ecc46c7', N'sevdetneng@gmail.com', N'123', N'sevdetneng@gmail.com', N'SEVDETNENG@GMAIL.COM', N'sevdetneng@gmail.com', N'SEVDETNENG@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEMP1dQdwlUU1qgJM97A/i6UWt6saHz47U5wkJFXgini1SM5Fu/YRVr1fk1Wkt1zfhg==', N'5YNLY4TVIPA7WAU54NPNDVXN37TKUWXL', N'8dc7dbba-7ba6-47c6-912d-85bc70afd573', NULL, 0, 0, NULL, 1, 0)
GO
SET IDENTITY_INSERT [dbo].[Filmler] ON 

INSERT [dbo].[Filmler] ([Id], [filmIsmi], [filmTuru], [filmAciklamasi], [filmResimURL]) VALUES (17, N'Örümcek Adam:Eve Dönüş Yok', N'Aksiyon', N'Örümcek-Adam Eve Dönüş Yok, kimliği açığa Örümcek-Adam''ın, sırrını geri vermesi için Doktor Strange''den yardım istemesiyle birlikte yaşananları konu ediyor. Örümcek-Adam''ın kimliği ifşa edilerek onun ve sevdiklerinin hayatı, halkın gözü önüne serilir.', N'https://www.webtekno.com/images/editor/default/0003/34/39d5444d37e91ffc7fedb80ba30e802adbe2727e.jpeg')
INSERT [dbo].[Filmler] ([Id], [filmIsmi], [filmTuru], [filmAciklamasi], [filmResimURL]) VALUES (18, N'Aşıklar Şehri', N'Romantik', N'Aşıklar Şehri, yolları kesişen iki insanın hikayesini anlatıyor. Hayatlarında yön bulmaya çalışan iki tutkulu insan Sebastian ve Mia''nın yolları, Los Angeles''ta trafiğin sıkışık olduğu bir gün kesişir. Her ikisi de sanat tutkunu olan bu iki insan, hayallerini gerçekleştirme yolunda düşe kalka ilerlemektedir', N'https://m.media-amazon.com/images/I/91jrKX9xjQL._AC_SL1500_.jpg')
INSERT [dbo].[Filmler] ([Id], [filmIsmi], [filmTuru], [filmAciklamasi], [filmResimURL]) VALUES (19, N'Extraction', N'Macera', N'Extraction, silah satıcıları ve kaçakçılara ait bir dünyada, uyuşturucu lordları arasında geçen savaşta piyon olan genç bir çocuğun hikayesini konu ediliyor. Kaçırılıp, dünyanın en ücra şehrine gönderilen Hintli çocuğun işadamı olan babası, oğlunu kurtarması için bir adam kiralar. Tyler Rake adındaki adamın dünyada kaybedecek hiçbir şeyi yoktur.', N'https://tr.web.img4.acsta.net/pictures/20/04/07/12/31/0578207.jpg')
INSERT [dbo].[Filmler] ([Id], [filmIsmi], [filmTuru], [filmAciklamasi], [filmResimURL]) VALUES (20, N'Matrix:Resurrections', N'Bilim Kurgu', N'Matrix Resurrections”la çifte gerçeklik dünyasına geri dönülüyor. Bay Anderson yeniden beyaz tavşanı izlemeyi seçmek zorunda kalır. Çünkü Anderson gerçekliğinin fiziksel mi yoksa zihinsel bir kurgu mu olduğunu anlayıp, kendisini gerçekten tanımak istemektedir.Neo’nun bildiği tek bir şey vardır; o da bir ilüzyon dahi olsa Matrix''e girmenin ve çıkmanın tek yolunun seçimden ibaret oluşudur.', N'https://tr.web.img4.acsta.net/pictures/21/12/07/15/37/2231582.jpg')
INSERT [dbo].[Filmler] ([Id], [filmIsmi], [filmTuru], [filmAciklamasi], [filmResimURL]) VALUES (21, N'G.I. Joe: Misilleme', N'Aksiyon', N'G.I. Joe Efsanesi son filminde yine zorlu görevlerle geri dönüyor. Ekip bu sefer dünyayı hakimiyeti altına almayı hedefleyen Zartan ve onun adın çalışanlar ve Zartan''ın etkisi altına giren dünya liderleriyle zorlu bir mücadeleye giriyor.', N'https://1001dizi.net/kullanici_paneli/images2/film/yabanci/g-i-joe-misilleme.jpg')
INSERT [dbo].[Filmler] ([Id], [filmIsmi], [filmTuru], [filmAciklamasi], [filmResimURL]) VALUES (22, N'Kasımda Aşk Başkadır', N'Romantik', N'Nelson Moss, tüm hayatı işi olan, işkolik bir adamdır. Bir gün ehliyet almak üzere girdiği bir sınavda Sara isimli deli-dolu bir kızla tanışır. Sara, Nelson''dan en azından bir ay boyunca onunla yaşamasını ister. Nelson, teklifi kabul edecektir. ', N'https://upload.wikimedia.org/wikipedia/tr/1/1b/SweetNovember2.jpg')
INSERT [dbo].[Filmler] ([Id], [filmIsmi], [filmTuru], [filmAciklamasi], [filmResimURL]) VALUES (23, N'İndiana Jones:Kristal Kafatası Krallığı', N'Macera', N'Soğuk Savaş sırasında Sovyet ajanları, Profesör Henry Jones’u izlemektedirler. Genç bir adamın, kendisine yaşlı ve bunak bir meslektaşı olan Oxley’den şifreli bir mesaj getirdiğine şahit olurlar. Yetenekli Irina Spalko’nun öncülüğünde Sovyetler, Jones ve genç adam Mutt’un peşine takılırlar. Oxley’in şifresi ile kuvarstan yapılma efsanevi bir kafatası bulurlar.', N'https://upload.wikimedia.org/wikipedia/tr/3/39/Indiana_Jones_ve_Kristal_Kafatas%C4%B1_Krall%C4%B1%C4%9F%C4%B1.jpg')
INSERT [dbo].[Filmler] ([Id], [filmIsmi], [filmTuru], [filmAciklamasi], [filmResimURL]) VALUES (24, N'Avengers:End Game', N'Aksiyon', N'Daha önce var olduğunu bilmedikleri bölgeler, kahramanlar ve evrenlerin varlığını öğrenen ekip, Thanos''un kurduğu bu çarpık dengeyi değiştirmek ve kendilerinden alınanı geri getirmek için hayatlarının en büyük mücadelesine girişeceklerdir. Hepsi kişisel olarak önem verdikleri şeyleri kaybetmiş olan kahramanlarımız için intikam vakti gelmiştir.', N'https://lumiere-a.akamaihd.net/v1/images/p_avengersendgame_19751_e14a0104.jpeg?region=0%2C0%2C540%2C810')
INSERT [dbo].[Filmler] ([Id], [filmIsmi], [filmTuru], [filmAciklamasi], [filmResimURL]) VALUES (25, N'Star-Trek:Sonsuzluk', N'Bilim Kurgu', N'Sonsuzluk’ta, Atılgan gemisinin ve cesur mürettebatının epik yolculuğu devam ederken, mürettebat uzayın bilinmeyen derinliklerinde  kendilerini ve federasyonun temsil ettiği her şeyi sınayan gizemli, yeni bir düşmanla karşılaşır. Kirk ve ekibini yok etme tehlikesi söz konusudur ve bu bilinmeyen, ücra bölgede iletişim de yoktur.', N'https://tr.web.img4.acsta.net/pictures/16/08/11/13/58/049730.jpg')
INSERT [dbo].[Filmler] ([Id], [filmIsmi], [filmTuru], [filmAciklamasi], [filmResimURL]) VALUES (26, N'Jumanji:Yeni Seviye', N'Macera', N'Jumanji: Yeni Seviye, arkadaşlarını kurtarmak için kendilerini yeniden oyunun içinde bulan gençlerin maceralarını konu ediyor.Hayatlarına yeni bir yön vermeye çalışan gençler, arkadaşlarını kurtarabilmek için kendilerini yeniden Jumanji dünyasının içinde bulur. Spencer oyuna yeniden girmek zorunda kaldığında, Martha, Fridge ve Bethany arkadaşlarını kurtarmak için Jumanji''ye geri döner.', N'https://tr.web.img3.acsta.net/pictures/19/12/09/10/14/1288309.jpg')
INSERT [dbo].[Filmler] ([Id], [filmIsmi], [filmTuru], [filmAciklamasi], [filmResimURL]) VALUES (27, N'Marslı', N'Bilim Kurgu', N'Mars gezegenine astronotların gönderildiği bir görevde, Mark Watney isimli astronot şiddetli bir fırtına sonrası öldü sanılarak ekibi tarafından terk edilir. Fakat Watney hayattadır ve kendisini Mars’ta yapayalnız bulur.', N'https://tr.web.img2.acsta.net/pictures/15/09/28/21/13/009841.jpg')
INSERT [dbo].[Filmler] ([Id], [filmIsmi], [filmTuru], [filmAciklamasi], [filmResimURL]) VALUES (28, N'Sil Baştan', N'Romantik', N'Sil Baştan, ayrıldığı sevgilisinden kalan hatırlarını sildiren bir adamın hikayesini anlatıyor. İki yıl boyunca beraber olduğu sevgilisinden oldukça şaşırtıcı bir haber alan Joel Barish, bir teknolojik deneye katılan sevgilisine ilişkilerini tamamen hafızasından silinmeden hatırlatmaya çalışmaktadır. ', N'https://tr.web.img3.acsta.net/pictures/bzp/01/40191.jpg')
SET IDENTITY_INSERT [dbo].[Filmler] OFF
GO
SET IDENTITY_INSERT [dbo].[FilmYorumlari] ON 

INSERT [dbo].[FilmYorumlari] ([Id], [Kullanici], [Yorum], [FilmNumara], [puan], [yorumBaslik]) VALUES (10, N'g191210082@sakarya.edu.tr', N'Film gayet güzeldi,eski filmlerde rol almış örümcek adamların tekrardan bu filmde rol alması eskileri hatırlattı ve hoştu.', 17, N'0', N'Eskileri anmak güzeldi.
')
INSERT [dbo].[FilmYorumlari] ([Id], [Kullanici], [Yorum], [FilmNumara], [puan], [yorumBaslik]) VALUES (11, N'sevdetneng@gmail.com', N'İzlerken çok duygulandım,çok keyifli bir filmdi.', 18, N'0', N'Çok güzel bir film.')
SET IDENTITY_INSERT [dbo].[FilmYorumlari] OFF
GO
SET IDENTITY_INSERT [dbo].[KullaniciKataloglar] ON 

INSERT [dbo].[KullaniciKataloglar] ([Id], [kullaniciAdi], [filmNumara]) VALUES (6, N'sevdet.isik@ogr.sakarya.edu.tr', 18)
INSERT [dbo].[KullaniciKataloglar] ([Id], [kullaniciAdi], [filmNumara]) VALUES (7, N'sevdet.isik@ogr.sakarya.edu.tr', 20)
INSERT [dbo].[KullaniciKataloglar] ([Id], [kullaniciAdi], [filmNumara]) VALUES (8, N'sevdetneng@gmail.com', 17)
INSERT [dbo].[KullaniciKataloglar] ([Id], [kullaniciAdi], [filmNumara]) VALUES (9, N'sevdetneng@gmail.com', 19)
INSERT [dbo].[KullaniciKataloglar] ([Id], [kullaniciAdi], [filmNumara]) VALUES (10, N'sevdetneng@gmail.com', 24)
INSERT [dbo].[KullaniciKataloglar] ([Id], [kullaniciAdi], [filmNumara]) VALUES (11, N'sevdetneng@gmail.com', 27)
INSERT [dbo].[KullaniciKataloglar] ([Id], [kullaniciAdi], [filmNumara]) VALUES (12, N'g191210082@sakarya.edu.tr', 18)
INSERT [dbo].[KullaniciKataloglar] ([Id], [kullaniciAdi], [filmNumara]) VALUES (13, N'g191210082@sakarya.edu.tr', 21)
INSERT [dbo].[KullaniciKataloglar] ([Id], [kullaniciAdi], [filmNumara]) VALUES (14, N'g191210082@sakarya.edu.tr', 23)
INSERT [dbo].[KullaniciKataloglar] ([Id], [kullaniciAdi], [filmNumara]) VALUES (15, N'g191210082@sakarya.edu.tr', 26)
SET IDENTITY_INSERT [dbo].[KullaniciKataloglar] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 26.12.2021 16:38:56 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 26.12.2021 16:38:56 ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 26.12.2021 16:38:56 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 26.12.2021 16:38:56 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 26.12.2021 16:38:56 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 26.12.2021 16:38:56 ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 26.12.2021 16:38:56 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Filmler] ADD  DEFAULT (N'') FOR [filmResimURL]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
USE [master]
GO
ALTER DATABASE [FilmlerSite] SET  READ_WRITE 
GO
