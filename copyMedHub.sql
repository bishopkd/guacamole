USE [master]
GO
/****** Object:  Database [MedHubSOM]    Script Date: 9/1/2020 1:10:43 PM ******/
CREATE DATABASE [MedHubSOM]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MedHubSOM_data', FILENAME = N'F:\Sqlserver\MSSQL14.MSSQLSERVER\MSSQL\DATA\MedHubSOM_data.mdf' , SIZE = 5242880KB , MAXSIZE = UNLIMITED, FILEGROWTH = 204800KB )
 LOG ON 
( NAME = N'MedHubSOM_log', FILENAME = N'L:\Sqlserver\MSSQL14.MSSQLSERVER\MSSQL\Data\MedHubSOM_log.ldf' , SIZE = 5242880KB , MAXSIZE = 2048GB , FILEGROWTH = 204800KB )
GO
ALTER DATABASE [MedHubSOM] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MedHubSOM].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MedHubSOM] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MedHubSOM] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MedHubSOM] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MedHubSOM] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MedHubSOM] SET ARITHABORT OFF 
GO
ALTER DATABASE [MedHubSOM] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [MedHubSOM] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MedHubSOM] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MedHubSOM] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MedHubSOM] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MedHubSOM] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MedHubSOM] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MedHubSOM] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MedHubSOM] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MedHubSOM] SET  DISABLE_BROKER 
GO
ALTER DATABASE [MedHubSOM] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MedHubSOM] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MedHubSOM] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MedHubSOM] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MedHubSOM] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MedHubSOM] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [MedHubSOM] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MedHubSOM] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [MedHubSOM] SET  MULTI_USER 
GO
ALTER DATABASE [MedHubSOM] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MedHubSOM] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MedHubSOM] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MedHubSOM] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [MedHubSOM] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'MedHubSOM', N'ON'
GO
ALTER DATABASE [MedHubSOM] SET QUERY_STORE = OFF
GO
USE [MedHubSOM]
GO
/****** Object:  User [torresf]    Script Date: 9/1/2020 1:10:44 PM ******/
CREATE USER [torresf] FOR LOGIN [SOM\torresf] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SalongaM]    Script Date: 9/1/2020 1:10:44 PM ******/
CREATE USER [SalongaM] FOR LOGIN [SOM\SalongaM] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [LovettM]    Script Date: 9/1/2020 1:10:44 PM ******/
CREATE USER [LovettM] FOR LOGIN [SOM\LovettM] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [kbishop2]    Script Date: 9/1/2020 1:10:44 PM ******/
CREATE USER [kbishop2] FOR LOGIN [Campus\kbishop2] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [isharenow]    Script Date: 9/1/2020 1:10:44 PM ******/
CREATE USER [isharenow] FOR LOGIN [Campus\isharenow] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [HellevigB]    Script Date: 9/1/2020 1:10:44 PM ******/
CREATE USER [HellevigB] FOR LOGIN [SOM\HellevigB] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [GadeP]    Script Date: 9/1/2020 1:10:45 PM ******/
CREATE USER [GadeP] FOR LOGIN [SOM\GadeP] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [dsadm]    Script Date: 9/1/2020 1:10:45 PM ******/
CREATE USER [dsadm] FOR LOGIN [dsadm] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [dlee17]    Script Date: 9/1/2020 1:10:45 PM ******/
CREATE USER [dlee17] FOR LOGIN [campus\dlee17] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [app_mburgess2]    Script Date: 9/1/2020 1:10:45 PM ******/
CREATE USER [app_mburgess2] FOR LOGIN [app_mburgess2] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [app_isis]    Script Date: 9/1/2020 1:10:45 PM ******/
CREATE USER [app_isis] FOR LOGIN [app_isis] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  DatabaseRole [rol_view_definition]    Script Date: 9/1/2020 1:10:45 PM ******/
CREATE ROLE [rol_view_definition]
GO
/****** Object:  DatabaseRole [rol_report]    Script Date: 9/1/2020 1:10:45 PM ******/
CREATE ROLE [rol_report]
GO
/****** Object:  DatabaseRole [rol_isis]    Script Date: 9/1/2020 1:10:45 PM ******/
CREATE ROLE [rol_isis]
GO
/****** Object:  DatabaseRole [rol_developer]    Script Date: 9/1/2020 1:10:45 PM ******/
CREATE ROLE [rol_developer]
GO
/****** Object:  DatabaseRole [rol_application]    Script Date: 9/1/2020 1:10:45 PM ******/
CREATE ROLE [rol_application]
GO
ALTER ROLE [rol_view_definition] ADD MEMBER [torresf]
GO
ALTER ROLE [db_datareader] ADD MEMBER [torresf]
GO
ALTER ROLE [db_owner] ADD MEMBER [SalongaM]
GO
ALTER ROLE [db_datareader] ADD MEMBER [LovettM]
GO
ALTER ROLE [db_owner] ADD MEMBER [kbishop2]
GO
ALTER ROLE [db_datareader] ADD MEMBER [isharenow]
GO
ALTER ROLE [db_owner] ADD MEMBER [HellevigB]
GO
ALTER ROLE [db_datareader] ADD MEMBER [GadeP]
GO
ALTER ROLE [db_datareader] ADD MEMBER [dsadm]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [dsadm]
GO
ALTER ROLE [db_datareader] ADD MEMBER [dlee17]
GO
ALTER ROLE [rol_view_definition] ADD MEMBER [app_mburgess2]
GO
ALTER ROLE [rol_isis] ADD MEMBER [app_isis]
GO
/****** Object:  Schema [app]    Script Date: 9/1/2020 1:10:46 PM ******/
CREATE SCHEMA [app]
GO
/****** Object:  Schema [appdm]    Script Date: 9/1/2020 1:10:46 PM ******/
CREATE SCHEMA [appdm]
GO
/****** Object:  Schema [appjob]    Script Date: 9/1/2020 1:10:46 PM ******/
CREATE SCHEMA [appjob]
GO
/****** Object:  Schema [apprpt]    Script Date: 9/1/2020 1:10:46 PM ******/
CREATE SCHEMA [apprpt]
GO
/****** Object:  Schema [appsys]    Script Date: 9/1/2020 1:10:46 PM ******/
CREATE SCHEMA [appsys]
GO
/****** Object:  Schema [apptemp]    Script Date: 9/1/2020 1:10:46 PM ******/
CREATE SCHEMA [apptemp]
GO
/****** Object:  Schema [dbadmin]    Script Date: 9/1/2020 1:10:46 PM ******/
CREATE SCHEMA [dbadmin]
GO
/****** Object:  Schema [rol_isis]    Script Date: 9/1/2020 1:10:46 PM ******/
CREATE SCHEMA [rol_isis]
GO
/****** Object:  Schema [rol_view_definition]    Script Date: 9/1/2020 1:10:47 PM ******/
CREATE SCHEMA [rol_view_definition]
GO
/****** Object:  UserDefinedFunction [dbo].[fn_sys_Dev_BldUpdSet]    Script Date: 9/1/2020 1:10:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE        FUNCTION [dbo].[fn_sys_Dev_BldUpdSet](@datatype varchar(100),@fldname varchar(100))  
RETURNS VARCHAR(255)  
AS  
BEGIN  
DECLARE @res varchar(255),@st varchar(255),@stConst varchar(50)  
  
IF @fldname in ('CreateDate','ModifyDate')  
-- SET @st = '@fldname = CASE @@fldname WHEN @const THEN getdate() ELSE @@fldname END,'  
 SET @st = '@fldname = Getdate(),'  
Else IF @fldname in ('CreateEntId','ModifyEntID')  
 SET @st = '@fldname = @UserEntID,'  
Else IF @fldname in ('CreateBy','ModifyBy')  
 SET @st = '@fldname = @UserName,'  
else if @datatype IN('text','ntext')   
 SET @st = '@fldname = CASE WHEN @@fldname LIKE @const THEN @fldname ELSE @@fldname END,'  
else IF @datatype IN('bit')   
 SET @st = '@fldname = CASE WHEN @@fldname IS NULL THEN @fldname ELSE @@fldname END,'  
ELSE  
 SET @st = '@fldname = CASE @@fldname WHEN @const THEN @fldname ELSE @@fldname END,'  
  
SET @stConst =   
 CASE @datatype WHEN 'int' THEN '@KNUM'   
            WHEN 'bit' THEN '@KNUM'  
 WHEN 'smallint' THEN '@KNUM'  
 WHEN 'tinyint' THEN '@KNUM' 
  WHEN 'bigint' THEN '@KNUM' 
 WHEN 'decimal' THEN '@KNUM'  
 WHEN 'money' THEN '@KNUM'  
 WHEN 'smallmoney' THEN '@KNUM '  
        WHEN 'float' THEN '@KNUM'  
        WHEN 'real' THEN '@KNUM'        
        WHEN 'datetime' THEN '@KDATE'  
        WHEN 'smalldatetime'THEN '@KDATE'  
 WHEN 'char' THEN '@KSTR'  
        WHEN 'varchar' THEN '@KSTR'  
        WHEN 'text' THEN '@KSTR'  
        WHEN 'nchar' THEN '@KSTR'  
        WHEN 'nvarchar' THEN '@KSTR'  
        WHEN 'ntext' THEN '@KSTR'  
 WHEN 'numeric' THEN '@KNUM'   
        END  
  
 SET @res = REPLACE(@st,'@const',@stConst)  
 SET @res = REPLACE(@res,'@fldname',@fldname)  
RETURN @res  
END  
  
GO
/****** Object:  UserDefinedFunction [dbo].[udf_StripHTML]    Script Date: 9/1/2020 1:10:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE FUNCTION [dbo].[udf_StripHTML]

--https://stackoverflow.com/questions/457701/best-way-to-strip-html-tags-from-a-string-in-sql-server
--by Patrick Honorez --- www.idevlop.com

(
@HTMLText varchar(MAX)
)
RETURNS varchar(MAX)
AS
BEGIN
DECLARE @Start  int
DECLARE @End    int
DECLARE @Length int

set @HTMLText = replace(@htmlText, '<br>',CHAR(13) + CHAR(10))
set @HTMLText = replace(@htmlText, '<br/>',CHAR(13) + CHAR(10))
set @HTMLText = replace(@htmlText, '<br />',CHAR(13) + CHAR(10))
set @HTMLText = replace(@htmlText, '<li>','- ')
set @HTMLText = replace(@htmlText, '</li>',CHAR(13) + CHAR(10))

set @HTMLText = replace(@htmlText, '&rsquo;' collate Latin1_General_CS_AS, ''''  collate Latin1_General_CS_AS)
set @HTMLText = replace(@htmlText, '&quot;' collate Latin1_General_CS_AS, '"'  collate Latin1_General_CS_AS)
set @HTMLText = replace(@htmlText, '&amp;' collate Latin1_General_CS_AS, '&'  collate Latin1_General_CS_AS)
set @HTMLText = replace(@htmlText, '&euro;' collate Latin1_General_CS_AS, '€'  collate Latin1_General_CS_AS)
set @HTMLText = replace(@htmlText, '&lt;' collate Latin1_General_CS_AS, '<'  collate Latin1_General_CS_AS)
set @HTMLText = replace(@htmlText, '&gt;' collate Latin1_General_CS_AS, '>'  collate Latin1_General_CS_AS)
set @HTMLText = replace(@htmlText, '&oelig;' collate Latin1_General_CS_AS, 'oe'  collate Latin1_General_CS_AS)
set @HTMLText = replace(@htmlText, '&nbsp;' collate Latin1_General_CS_AS, ' '  collate Latin1_General_CS_AS)
set @HTMLText = replace(@htmlText, '&copy;' collate Latin1_General_CS_AS, '©'  collate Latin1_General_CS_AS)
set @HTMLText = replace(@htmlText, '&laquo;' collate Latin1_General_CS_AS, '«'  collate Latin1_General_CS_AS)
set @HTMLText = replace(@htmlText, '&reg;' collate Latin1_General_CS_AS, '®'  collate Latin1_General_CS_AS)
set @HTMLText = replace(@htmlText, '&plusmn;' collate Latin1_General_CS_AS, '±'  collate Latin1_General_CS_AS)
set @HTMLText = replace(@htmlText, '&sup2;' collate Latin1_General_CS_AS, '²'  collate Latin1_General_CS_AS)
set @HTMLText = replace(@htmlText, '&sup3;' collate Latin1_General_CS_AS, '³'  collate Latin1_General_CS_AS)
set @HTMLText = replace(@htmlText, '&micro;' collate Latin1_General_CS_AS, 'µ'  collate Latin1_General_CS_AS)
set @HTMLText = replace(@htmlText, '&middot;' collate Latin1_General_CS_AS, '·'  collate Latin1_General_CS_AS)
set @HTMLText = replace(@htmlText, '&ordm;' collate Latin1_General_CS_AS, 'º'  collate Latin1_General_CS_AS)
set @HTMLText = replace(@htmlText, '&raquo;' collate Latin1_General_CS_AS, '»'  collate Latin1_General_CS_AS)
set @HTMLText = replace(@htmlText, '&frac14;' collate Latin1_General_CS_AS, '¼'  collate Latin1_General_CS_AS)
set @HTMLText = replace(@htmlText, '&frac12;' collate Latin1_General_CS_AS, '½'  collate Latin1_General_CS_AS)
set @HTMLText = replace(@htmlText, '&frac34;' collate Latin1_General_CS_AS, '¾'  collate Latin1_General_CS_AS)
set @HTMLText = replace(@htmlText, '&Aelig' collate Latin1_General_CS_AS, 'Æ'  collate Latin1_General_CS_AS)
set @HTMLText = replace(@htmlText, '&Ccedil;' collate Latin1_General_CS_AS, 'Ç'  collate Latin1_General_CS_AS)
set @HTMLText = replace(@htmlText, '&Egrave;' collate Latin1_General_CS_AS, 'È'  collate Latin1_General_CS_AS)
set @HTMLText = replace(@htmlText, '&Eacute;' collate Latin1_General_CS_AS, 'É'  collate Latin1_General_CS_AS)
set @HTMLText = replace(@htmlText, '&Ecirc;' collate Latin1_General_CS_AS, 'Ê'  collate Latin1_General_CS_AS)
set @HTMLText = replace(@htmlText, '&Ouml;' collate Latin1_General_CS_AS, 'Ö'  collate Latin1_General_CS_AS)
set @HTMLText = replace(@htmlText, '&agrave;' collate Latin1_General_CS_AS, 'à'  collate Latin1_General_CS_AS)
set @HTMLText = replace(@htmlText, '&acirc;' collate Latin1_General_CS_AS, 'â'  collate Latin1_General_CS_AS)
set @HTMLText = replace(@htmlText, '&auml;' collate Latin1_General_CS_AS, 'ä'  collate Latin1_General_CS_AS)
set @HTMLText = replace(@htmlText, '&aelig;' collate Latin1_General_CS_AS, 'æ'  collate Latin1_General_CS_AS)
set @HTMLText = replace(@htmlText, '&ccedil;' collate Latin1_General_CS_AS, 'ç'  collate Latin1_General_CS_AS)
set @HTMLText = replace(@htmlText, '&egrave;' collate Latin1_General_CS_AS, 'è'  collate Latin1_General_CS_AS)
set @HTMLText = replace(@htmlText, '&eacute;' collate Latin1_General_CS_AS, 'é'  collate Latin1_General_CS_AS)
set @HTMLText = replace(@htmlText, '&ecirc;' collate Latin1_General_CS_AS, 'ê'  collate Latin1_General_CS_AS)
set @HTMLText = replace(@htmlText, '&euml;' collate Latin1_General_CS_AS, 'ë'  collate Latin1_General_CS_AS)
set @HTMLText = replace(@htmlText, '&icirc;' collate Latin1_General_CS_AS, 'î'  collate Latin1_General_CS_AS)
set @HTMLText = replace(@htmlText, '&ocirc;' collate Latin1_General_CS_AS, 'ô'  collate Latin1_General_CS_AS)
set @HTMLText = replace(@htmlText, '&ouml;' collate Latin1_General_CS_AS, 'ö'  collate Latin1_General_CS_AS)
set @HTMLText = replace(@htmlText, '&divide;' collate Latin1_General_CS_AS, '÷'  collate Latin1_General_CS_AS)
set @HTMLText = replace(@htmlText, '&oslash;' collate Latin1_General_CS_AS, 'ø'  collate Latin1_General_CS_AS)
set @HTMLText = replace(@htmlText, '&ugrave;' collate Latin1_General_CS_AS, 'ù'  collate Latin1_General_CS_AS)
set @HTMLText = replace(@htmlText, '&uacute;' collate Latin1_General_CS_AS, 'ú'  collate Latin1_General_CS_AS)
set @HTMLText = replace(@htmlText, '&ucirc;' collate Latin1_General_CS_AS, 'û'  collate Latin1_General_CS_AS)
set @HTMLText = replace(@htmlText, '&uuml;' collate Latin1_General_CS_AS, 'ü'  collate Latin1_General_CS_AS)
set @HTMLText = replace(@htmlText, '&quot;' collate Latin1_General_CS_AS, '"'  collate Latin1_General_CS_AS)
set @HTMLText = replace(@htmlText, '&amp;' collate Latin1_General_CS_AS, '&'  collate Latin1_General_CS_AS)
set @HTMLText = replace(@htmlText, '&lsaquo;' collate Latin1_General_CS_AS, '<'  collate Latin1_General_CS_AS)
set @HTMLText = replace(@htmlText, '&rsaquo;' collate Latin1_General_CS_AS, '>'  collate Latin1_General_CS_AS)


-- Remove anything between <STYLE> tags
SET @Start = CHARINDEX('<STYLE', @HTMLText)
SET @End = CHARINDEX('</STYLE>', @HTMLText, CHARINDEX('<', @HTMLText)) + 7
SET @Length = (@End - @Start) + 1

WHILE (@Start > 0 AND @End > 0 AND @Length > 0) BEGIN
SET @HTMLText = STUFF(@HTMLText, @Start, @Length, '')
SET @Start = CHARINDEX('<STYLE', @HTMLText)
SET @End = CHARINDEX('</STYLE>', @HTMLText, CHARINDEX('</STYLE>', @HTMLText)) + 7
SET @Length = (@End - @Start) + 1
END

-- Remove anything between <whatever> tags
SET @Start = CHARINDEX('<', @HTMLText)
SET @End = CHARINDEX('>', @HTMLText, CHARINDEX('<', @HTMLText))
SET @Length = (@End - @Start) + 1

WHILE (@Start > 0 AND @End > 0 AND @Length > 0) BEGIN
SET @HTMLText = STUFF(@HTMLText, @Start, @Length, '')
SET @Start = CHARINDEX('<', @HTMLText)
SET @End = CHARINDEX('>', @HTMLText, CHARINDEX('<', @HTMLText))
SET @Length = (@End - @Start) + 1
END

RETURN LTRIM(RTRIM(@HTMLText))

END
GO
/****** Object:  Table [dbo].[i_clerkships]    Script Date: 9/1/2020 1:10:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[i_clerkships](
	[clerkshipID] [int] NOT NULL,
	[schoolID] [int] NULL,
	[clerkship_name] [varchar](100) NULL,
	[clerkship_abbrev] [varchar](41) NULL,
	[clerkship_status] [int] NULL,
	[clerkship_type] [int] NULL,
	[locationID] [int] NULL,
	[admin_userID] [int] NULL,
	[admin_backup_userID] [int] NULL,
	[director_userID] [int] NULL,
	[setting_procedures_require_supervisor] [int] NULL,
	[setting_procedures_supervisors] [int] NULL,
	[setting_procedures_supervisors_residents] [int] NULL,
	[setting_procedures_supervisors_residents_programsA] [text] NULL,
	[setting_procedures_clinics] [int] NULL,
	[setting_procedures_multiple] [int] NULL,
	[setting_procedures_force] [int] NULL,
	[setting_procedures_other] [int] NULL,
	[setting_procedures_roleA] [varchar](20) NULL,
	[setting_procedures_diagnosis] [int] NULL,
	[setting_procedures_diagnosis_multiple] [int] NULL,
	[setting_procedures_diagnosis_force] [int] NULL,
	[setting_evaluations_procedure_eval] [int] NULL,
	[setting_procedures_verify] [int] NULL,
	[setting_procedures_verify_batch] [int] NULL,
	[setting_curriculum_email] [int] NULL,
	[procedures_locationID] [int] NULL,
	[setting_procedures_visits] [int] NULL,
	[setting_conferences_attendance_style] [int] NULL,
	[setting_conferences_attendance_instructions] [varchar](255) NULL,
	[setting_conferences_identify_absences] [int] NULL,
	[setting_conferences_lecturer_alert] [int] NULL,
	[setting_conferences_time] [int] NULL,
	[setting_conferences_attendance_faculty] [int] NULL,
	[setting_conferences_excused] [int] NULL,
	[setting_conferences_public] [int] NULL,
	[setting_procedures_summary] [int] NULL,
	[setting_procedures_summary_words] [int] NULL,
	[setting_evaluations_initiatedA] [varchar](255) NULL,
	[setting_evaluations_sinitiatedA] [varchar](255) NULL,
	[setting_evaluations_late] [int] NULL,
	[setting_evaluations_delivery_days] [int] NULL,
	[setting_evaluations_alert_admin] [int] NULL,
	[setting_evaluations_email_student] [int] NULL,
	[setting_evaluations_student_view] [int] NULL,
	[setting_evaluations_signature] [int] NULL,
	[setting_evaluations_remove_disable] [int] NULL,
	[setting_evaluations_remove_alert] [int] NULL,
	[setting_evaluations_link] [int] NULL,
	[setting_evaluations_kiosk_student_evaluationID] [int] NULL,
	[setting_evaluations_kiosk_faculty_evaluationID] [int] NULL,
	[setting_evaluations_ris] [int] NULL,
	[setting_evaluations_ris_days] [int] NULL,
	[setting_evaluations_ris_alert_days] [int] NULL,
	[setting_evaluations_ris_sof_evaluationID] [int] NULL,
	[setting_evaluations_ris_sor_evaluationID] [int] NULL,
	[setting_evaluations_ris_ros_evaluationID] [int] NULL,
	[setting_evaluations_ris_fos_evaluationID] [int] NULL,
	[setting_evaluations_ris_days_expiration] [int] NULL,
	[setting_evaluations_ris_released] [int] NULL,
	[setting_evaluations_ris_required] [int] NULL,
	[setting_evaluations_ris_recommended] [int] NULL,
	[setting_evaluations_student_view_residents] [int] NULL,
	[associate_directorID1] [int] NULL,
	[associate_directorID2] [int] NULL,
	[associate_directorID3] [int] NULL,
	[associate_directorID4] [int] NULL,
	[associate_directorID5] [int] NULL,
	[associate_directorID6] [int] NULL,
	[setting_schedules_rotations_refID] [int] NULL,
	[setting_evaluations_final] [int] NULL,
	[portal_course_students] [text] NULL,
	[portal_course_faculty] [text] NULL,
	[portal_course_admins] [text] NULL,
	[portal_course_usertypeA] [varchar](10) NULL,
	[setting_evaluations_spinitiatedA] [varchar](255) NULL,
	[setting_evaluations_scinitiatedA] [varchar](255) NULL,
	[blockID] [int] NULL,
	[clerkship_groupID] [int] NULL,
	[setting_students_min] [int] NULL,
	[setting_students_max] [int] NULL,
	[setting_overlap] [int] NULL,
	[setting_waitlist] [int] NULL,
	[clerkship_number] [varchar](32) NULL,
	[clerkship_hours] [decimal](6, 1) NULL,
	[setting_sessions_instructors_alert] [int] NULL,
	[setting_multiple] [int] NULL,
	[setting_evaluations_final_evaluationID] [int] NULL,
	[setting_evaluations_course] [int] NULL,
	[setting_evaluations_course_delivery] [int] NULL,
	[setting_evaluations_course_evaluationID] [int] NULL,
	[setting_evaluations_final_due] [int] NULL,
	[grading_scaleID] [int] NULL,
	[setting_gradebook] [int] NULL,
	[setting_evaluations_student_view_final] [int] NULL,
	[setting_evaluations_scale_repeat] [int] NULL,
	[setting_schedule_view] [int] NULL,
	[clerkship_description] [text] NULL,
	[director_outsideID] [int] NULL,
	[setting_evaluations_ris_outside] [int] NULL,
	[setting_procedures_diagnosis_roleA] [varchar](16) NULL,
	[setting_schedule_permanent_faculty] [int] NULL,
	[setting_schedule_show_gme] [int] NULL,
	[setting_schedule_hide_unused] [int] NULL,
	[setting_schedule_order] [int] NULL,
	[setting_procedures_diagnosis_other] [int] NULL,
	[include_curriculum_inventory] [int] NULL,
	[setting_clerkship_color] [varchar](12) NULL,
	[setting_evaluations_remove_comment] [int] NULL,
	[externalID] [int] NULL,
	[setting_procedures_patientID] [int] NULL,
	[clerkship_courseID] [int] NULL,
	[setting_clerkship_self_enrollment] [int] NULL,
	[setting_procedures_patient] [int] NULL,
	[primary_siteID] [int] NULL,
	[parentID] [int] NULL,
	[setting_evaluations_final_delivery] [int] NULL,
	[setting_require_file_upload_add] [int] NULL,
	[setting_require_file_upload_drop] [int] NULL,
	[setting_require_file_instructions_add] [text] NULL,
	[setting_require_file_instructions_drop] [text] NULL,
	[setting_require_file_types_allowed_add] [varchar](60) NULL,
	[setting_require_file_types_allowed_drop] [varchar](60) NULL,
	[setting_require_file_multiple_allowed_add] [int] NULL,
	[setting_require_file_multiple_allowed_drop] [int] NULL,
	[setting_procedures_diagnosis_code] [int] NULL,
	[setting_procedures_role_verification] [varchar](64) NULL,
	[setting_evaluations_delivery_window] [int] NULL,
	[setting_evals_expiration_days] [int] NULL,
	[setting_evals_expiration_enabled] [int] NULL,
	[enable_course_auto_calc] [int] NULL,
	[setting_other_learning_activities_weight] [int] NULL,
	[setting_shelf_exam_test_field_refID] [int] NULL,
	[setting_shelf_exam_test_retake_field_refID] [int] NULL,
	[setting_evaluations_student_view_peers] [int] NULL,
	[setting_auto_adddrop] [int] NULL,
	[UCSF_init_data_import_datetime] [datetime] NULL,
	[UCSF_last_data_import_datetime] [datetime] NULL,
 CONSTRAINT [PK_i_clerkships] PRIMARY KEY CLUSTERED 
(
	[clerkshipID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[eh_evals]    Script Date: 9/1/2020 1:10:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[eh_evals](
	[evaluationID] [int] NOT NULL,
	[iID] [int] NULL,
	[author_programID] [int] NULL,
	[eval_typeA] [varchar](255) NULL,
	[eval_status] [int] NULL,
	[authorID] [int] NULL,
	[creation_date] [date] NULL,
	[modified_date] [date] NULL,
	[title] [varchar](100) NULL,
	[introduction] [text] NULL,
	[public] [int] NULL,
	[setting_descriptions] [int] NULL,
	[eval_active] [int] NULL,
	[file] [varchar](255) NULL,
	[setting_autonumber] [int] NULL,
	[eval_format] [int] NULL,
	[author_clerkshipID] [int] NULL,
	[oppe_type] [int] NULL,
	[share_community] [int] NULL,
	[mobile_friendly] [int] NULL,
	[skip_logic] [int] NULL,
	[allow_student_view] [int] NULL,
	[UCSF_init_data_import_datetime] [datetime] NULL,
	[UCSF_last_data_import_datetime] [datetime] NULL,
 CONSTRAINT [PK_eh_evals] PRIMARY KEY CLUSTERED 
(
	[evaluationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_ref_evaluation_type]    Script Date: 9/1/2020 1:10:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_ref_evaluation_type](
	[Evaluation_Type_ID] [int] IDENTITY(1,1) NOT NULL,
	[Evaluation_Type] [varchar](50) NULL,
	[Evaluation_Type_Description] [varchar](200) NULL,
	[Evaluation_Type_ID_EValue] [int] NULL,
	[Evaluation_Type_ID_MedHub] [int] NULL,
	[Load_Data_From_Source] [bit] NULL,
	[Create_Date] [datetime] NULL,
	[Create_User] [varchar](50) NULL,
	[Modify_Date] [datetime] NULL,
	[Modify_User] [varchar](50) NULL,
 CONSTRAINT [PK_tbl_ref_evaluation_type] PRIMARY KEY CLUSTERED 
(
	[Evaluation_Type_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[eh_evals_questions_optionsets_options]    Script Date: 9/1/2020 1:10:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[eh_evals_questions_optionsets_options](
	[optionID] [int] NOT NULL,
	[optionsetID] [int] NULL,
	[option_value] [decimal](18, 1) NULL,
	[option_heading] [varchar](100) NULL,
	[option_title] [varchar](300) NULL,
	[option_order] [int] NULL,
	[option_bgcolor] [varchar](10) NULL,
	[option_value_scaled] [decimal](3, 1) NULL,
	[option_value_milestones] [decimal](3, 1) NULL,
	[UCSF_init_data_import_datetime] [datetime] NULL,
	[UCSF_last_data_import_datetime] [datetime] NULL,
 CONSTRAINT [PK_eh_evals_questions_optionsets_options] PRIMARY KEY CLUSTERED 
(
	[optionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[eh_responses]    Script Date: 9/1/2020 1:10:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[eh_responses](
	[responseID] [int] NOT NULL,
	[evaluationID] [int] NULL,
	[auto_evaluationID] [int] NULL,
	[rotationID] [int] NULL,
	[globalserviceID] [int] NULL,
	[response_status] [int] NULL,
	[evaluator_userID] [int] NULL,
	[issue_date] [date] NULL,
	[completion_date] [date] NULL,
	[response_title] [varchar](150) NULL,
	[evaluatee_other] [varchar](100) NULL,
	[programID] [int] NULL,
	[response_notes] [varchar](255) NULL,
	[eval_type] [int] NULL,
	[flag_alert] [int] NULL,
	[evaluatee_userID] [int] NULL,
	[evaluatee_outsideID] [int] NULL,
	[evaluator_outsideID] [int] NULL,
	[evaluator_other] [varchar](100) NULL,
	[lectureID] [int] NULL,
	[procedureID] [int] NULL,
	[reviewed_date] [date] NULL,
	[special_type] [int] NULL,
	[special_signature] [varchar](25) NULL,
	[flag_printed] [int] NULL,
	[clinicnameID] [int] NULL,
	[flag_tiered] [int] NULL,
	[leader_responseA] [varchar](100) NULL,
	[special_force] [int] NULL,
	[resent_date] [date] NULL,
	[program_notes] [varchar](1000) NULL,
	[portfolio_entryID] [int] NULL,
	[autoID] [int] NULL,
	[rotation_start_date] [date] NULL,
	[rotation_end_date] [date] NULL,
	[flag_released] [int] NULL,
	[risID] [int] NULL,
	[clerkshipID] [int] NULL,
	[student_enrollmentID] [int] NULL,
	[student_flag_changed] [int] NULL,
	[oppeID] [int] NULL,
	[deliveredby_userID] [int] NULL,
	[oppe_faculty_serviceID] [int] NULL,
	[sessionID] [int] NULL,
	[mobile] [int] NULL,
	[submission_source] [int] NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
	[expiration_date] [date] NULL,
	[return_datetime] [datetime] NULL,
	[return_reason] [text] NULL,
	[evaluatee_notified] [int] NULL,
	[UCSF_init_data_import_datetime] [datetime] NULL,
	[UCSF_last_data_import_datetime] [datetime] NULL,
 CONSTRAINT [PK_eh_responses] PRIMARY KEY CLUSTERED 
(
	[responseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users_gme]    Script Date: 9/1/2020 1:10:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users_gme](
	[gmeID] [int] NOT NULL,
	[userID] [int] NULL,
	[title] [varchar](50) NULL,
	[contact_phone_work] [varchar](25) NULL,
	[contact_phone_home] [varchar](25) NULL,
	[contact_phone_cell] [varchar](25) NULL,
	[contact_pager] [varchar](15) NULL,
	[contact_fax] [varchar](15) NULL,
	[contact_address_work] [varchar](255) NULL,
	[contact_address_home] [varchar](255) NULL,
	[contact_mail] [varchar](100) NULL,
	[photo] [int] NULL,
	[notes] [text] NULL,
	[access_security] [int] NULL,
	[access_residents] [int] NULL,
	[access_settings] [int] NULL,
	[access_schedules] [int] NULL,
	[access_reports] [int] NULL,
	[access_evaluations] [int] NULL,
	[setting_session] [int] NULL,
	[setting_autosearch] [int] NULL,
	[employeeID] [varchar](15) NULL,
	[signature] [int] NULL,
	[setting_lock_schedule_header] [int] NULL,
	[setting_favorites] [int] NULL,
	[setting_disable_report_memory] [int] NULL,
	[access_sites] [int] NULL,
	[access_billing] [int] NULL,
	[access_programs] [int] NULL,
	[custom_text1] [varchar](255) NULL,
	[custom_text2] [varchar](255) NULL,
	[custom_text3] [varchar](255) NULL,
	[custom_text4] [varchar](255) NULL,
	[custom_text5] [varchar](255) NULL,
	[altID] [varchar](50) NULL,
	[access_site_level] [int] NULL,
	[access_iA] [varchar](255) NULL,
	[UCSF_init_data_import_datetime] [datetime] NULL,
	[UCSF_last_data_import_datetime] [datetime] NULL,
 CONSTRAINT [PK_users_gme] PRIMARY KEY CLUSTERED 
(
	[gmeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users_finance]    Script Date: 9/1/2020 1:10:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users_finance](
	[financeID] [int] NOT NULL,
	[userID] [int] NULL,
	[title] [varchar](50) NULL,
	[contact_phone_work] [varchar](25) NULL,
	[contact_phone_home] [varchar](25) NULL,
	[contact_phone_cell] [varchar](25) NULL,
	[contact_pager] [varchar](15) NULL,
	[contact_fax] [varchar](15) NULL,
	[contact_address_work] [varchar](255) NULL,
	[contact_address_home] [varchar](255) NULL,
	[contact_mail] [varchar](100) NULL,
	[photo] [int] NULL,
	[notes] [text] NULL,
	[access_security] [int] NULL,
	[access_residents] [int] NULL,
	[access_iris] [int] NULL,
	[access_settings] [int] NULL,
	[access_schedules] [int] NULL,
	[access_reports] [int] NULL,
	[setting_session] [int] NULL,
	[setting_autosearch] [int] NULL,
	[employeeID] [varchar](15) NULL,
	[setting_lock_schedule_header] [int] NULL,
	[setting_disable_report_memory] [int] NULL,
	[access_costreportA] [varchar](255) NULL,
	[custom_text1] [varchar](255) NULL,
	[custom_text2] [varchar](255) NULL,
	[custom_text3] [varchar](255) NULL,
	[custom_text4] [varchar](255) NULL,
	[custom_text5] [varchar](255) NULL,
	[altID] [varchar](50) NULL,
	[UCSF_init_data_import_datetime] [datetime] NULL,
	[UCSF_last_data_import_datetime] [datetime] NULL,
 CONSTRAINT [PK_users_finance] PRIMARY KEY CLUSTERED 
(
	[financeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users_coordinators]    Script Date: 9/1/2020 1:10:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users_coordinators](
	[coordinatorID] [int] NOT NULL,
	[userID] [int] NULL,
	[title] [varchar](50) NULL,
	[contact_phone_work] [varchar](25) NULL,
	[contact_pager] [varchar](15) NULL,
	[contact_fax] [varchar](15) NULL,
	[contact_address_work] [varchar](255) NULL,
	[contact_address_home] [varchar](255) NULL,
	[contact_mail] [varchar](100) NULL,
	[contact_phone_home] [varchar](25) NULL,
	[contact_phone_cell] [varchar](25) NULL,
	[setting_session] [int] NULL,
	[setting_schedule] [int] NULL,
	[photo] [int] NULL,
	[notes] [text] NULL,
	[setting_autosearch] [int] NULL,
	[access_security] [int] NULL,
	[access_settings] [int] NULL,
	[access_students] [int] NULL,
	[access_evaluations] [int] NULL,
	[access_reports] [int] NULL,
	[access_schedules] [int] NULL,
	[setting_dutyhours_method] [int] NULL,
	[coordinator_type] [int] NULL,
	[employeeID] [varchar](15) NULL,
	[access_evaluations_viewing] [int] NULL,
	[access_evaluations_forms] [int] NULL,
	[access_evaluations_delivery] [int] NULL,
	[access_evaluations_reports] [int] NULL,
	[setting_favorites] [int] NULL,
	[UCSF_init_data_import_datetime] [datetime] NULL,
	[UCSF_last_data_import_datetime] [datetime] NULL,
 CONSTRAINT [PK_users_coordinators] PRIMARY KEY CLUSTERED 
(
	[coordinatorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users_admin]    Script Date: 9/1/2020 1:10:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users_admin](
	[adminID] [int] NOT NULL,
	[userID] [int] NULL,
	[title] [varchar](50) NULL,
	[contact_phone_work] [varchar](25) NULL,
	[contact_pager] [varchar](15) NULL,
	[contact_fax] [varchar](15) NULL,
	[contact_address_work] [varchar](255) NULL,
	[contact_address_home] [varchar](255) NULL,
	[photo] [int] NULL,
	[notes] [text] NULL,
	[contact_mail] [varchar](100) NULL,
	[contact_phone_home] [varchar](25) NULL,
	[contact_phone_cell] [varchar](25) NULL,
	[setting_session] [int] NULL,
	[setting_schedule] [int] NULL,
	[setting_autosearch] [int] NULL,
	[employeeID] [varchar](15) NULL,
	[setting_dutyhours_method] [int] NULL,
	[setting_lock_schedule_header] [int] NULL,
	[setting_favorites] [int] NULL,
	[setting_disable_report_memory] [int] NULL,
	[custom_text1] [varchar](255) NULL,
	[custom_text2] [varchar](255) NULL,
	[custom_text3] [varchar](255) NULL,
	[custom_text4] [varchar](255) NULL,
	[custom_text5] [varchar](255) NULL,
	[altID] [varchar](50) NULL,
	[UCSF_init_data_import_datetime] [datetime] NULL,
	[UCSF_last_data_import_datetime] [datetime] NULL,
 CONSTRAINT [PK_users_admin] PRIMARY KEY CLUSTERED 
(
	[adminID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users_residents]    Script Date: 9/1/2020 1:10:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users_residents](
	[profileID] [int] NOT NULL,
	[userID] [int] NULL,
	[programID] [int] NULL,
	[scheduleID] [int] NULL,
	[level] [int] NULL,
	[pgy] [int] NULL,
	[nonacgme] [int] NULL,
	[status_refID] [int] NULL,
	[demo_employeeID] [varchar](15) NULL,
	[demo_birth_date] [date] NULL,
	[contact_preferred] [int] NULL,
	[demo_positionID] [varchar](15) NULL,
	[contact_phone_home] [varchar](25) NULL,
	[demo_name_middle] [varchar](25) NULL,
	[demo_name_title] [varchar](4) NULL,
	[demo_name_suffix] [varchar](16) NULL,
	[demo_name_alias] [varchar](100) NULL,
	[demo_status] [int] NULL,
	[demo_visiting_hospital] [varchar](100) NULL,
	[demo_npi] [varchar](10) NULL,
	[demo_gender] [char](2) NULL,
	[demo_birth_place] [varchar](50) NULL,
	[demo_birth_place_country] [varchar](50) NULL,
	[demo_citizenship] [varchar](50) NULL,
	[demo_ethnicity] [varchar](50) NULL,
	[demo_physician_id] [varchar](10) NULL,
	[demo_position_control] [varchar](10) NULL,
	[demo_visa_status] [varchar](30) NULL,
	[demo_visa_issued] [date] NULL,
	[demo_visa_exp] [date] NULL,
	[demo_visa_alien] [varchar](15) NULL,
	[demo_visa_comments] [text] NULL,
	[demo_sevis_id] [varchar](15) NULL,
	[demo_sevis_issued] [date] NULL,
	[demo_sevis_exp] [date] NULL,
	[demo_sevis_mailed] [date] NULL,
	[demo_sevis_comments] [text] NULL,
	[demo_i9_exp] [date] NULL,
	[demo_work_auth] [varchar](20) NULL,
	[demo_work_exp] [date] NULL,
	[demo_marital_status] [char](1) NULL,
	[demo_marital_spouse] [varchar](50) NULL,
	[demo_children] [varchar](100) NULL,
	[demo_comments] [text] NULL,
	[demo_access_code] [varchar](15) NULL,
	[demo_edben] [int] NULL,
	[demo_edben_date] [date] NULL,
	[demo_oncall_money_id] [varchar](10) NULL,
	[demo_adp] [varchar](10) NULL,
	[demo_sms_password] [varchar](10) NULL,
	[demo_vendorID] [varchar](20) NULL,
	[demo_cc_encode] [varchar](6) NULL,
	[contact_phone_cell] [varchar](25) NULL,
	[contact_phone_work] [varchar](25) NULL,
	[contact_pager] [varchar](25) NULL,
	[contact_fax] [varchar](30) NULL,
	[contact_mailbox] [varchar](200) NULL,
	[contact_address_current_line1] [varchar](100) NULL,
	[contact_address_current_line2] [varchar](100) NULL,
	[contact_address_current_city] [varchar](50) NULL,
	[contact_address_current_state] [varchar](50) NULL,
	[contact_address_current_country] [varchar](50) NULL,
	[contact_address_current_zipcode] [varchar](15) NULL,
	[contact_address_internal_line1] [varchar](100) NULL,
	[contact_address_internal_line2] [varchar](100) NULL,
	[contact_address_internal_city] [varchar](50) NULL,
	[contact_address_internal_state] [varchar](50) NULL,
	[contact_address_internal_country] [varchar](50) NULL,
	[contact_address_internal_zipcode] [varchar](15) NULL,
	[contact_address_permanent_line1] [varchar](100) NULL,
	[contact_address_permanent_line2] [varchar](100) NULL,
	[contact_address_permanent_city] [varchar](50) NULL,
	[contact_address_permanent_state] [varchar](50) NULL,
	[contact_address_permanent_country] [varchar](50) NULL,
	[contact_address_permanent_zipcode] [varchar](15) NULL,
	[contact_address_other_description] [varchar](100) NULL,
	[contact_address_other_line1] [varchar](100) NULL,
	[contact_address_other_line2] [varchar](100) NULL,
	[contact_address_other_city] [varchar](50) NULL,
	[contact_address_other_state] [varchar](50) NULL,
	[contact_address_other_country] [varchar](50) NULL,
	[contact_address_other_zipcode] [varchar](15) NULL,
	[contact_comments] [text] NULL,
	[education_comments] [text] NULL,
	[certifications_comments] [text] NULL,
	[training_comments] [text] NULL,
	[pg_comments] [text] NULL,
	[pg_enddate] [date] NULL,
	[pg_terminated] [date] NULL,
	[pr_activity] [int] NULL,
	[pr_activity_comments] [varchar](255) NULL,
	[photo] [int] NULL,
	[contact_pager_alpha] [varchar](100) NULL,
	[ci] [int] NULL,
	[tests_comments] [text] NULL,
	[comments_program] [text] NULL,
	[comments_gme] [text] NULL,
	[comments_hsf] [text] NULL,
	[psv_status] [int] NULL,
	[psv_approval_committee] [date] NULL,
	[psv_approval_ecca] [date] NULL,
	[psv_school] [int] NULL,
	[psv_school_detail] [varchar](100) NULL,
	[psv_license] [int] NULL,
	[psv_license_detail] [varchar](100) NULL,
	[psv_cs] [int] NULL,
	[psv_cs_detail] [varchar](100) NULL,
	[psv_dea] [int] NULL,
	[psv_dea_detail] [varchar](100) NULL,
	[psv_fsmb] [int] NULL,
	[psv_fsmb_detail] [varchar](100) NULL,
	[psv_npdb] [int] NULL,
	[psv_npdb_detail] [varchar](100) NULL,
	[psv_boards] [int] NULL,
	[psv_boards_detail] [varchar](100) NULL,
	[psv_criminal] [int] NULL,
	[psv_criminal_detail] [varchar](100) NULL,
	[psv_postgrad] [int] NULL,
	[psv_postgrad_detail] [varchar](100) NULL,
	[psv_comments] [text] NULL,
	[modification_date] [date] NULL,
	[start_date] [date] NULL,
	[start_date_projected] [date] NULL,
	[end_date_projected] [date] NULL,
	[irp_limit_date] [date] NULL,
	[immunization_comments] [text] NULL,
	[funding_comments] [text] NULL,
	[files_comments] [text] NULL,
	[ci_comments] [text] NULL,
	[awards_comments] [text] NULL,
	[immigration_comments] [text] NULL,
	[setting_evaluation_alert] [int] NULL,
	[demo_dictation] [varchar](10) NULL,
	[demo_languages] [varchar](30) NULL,
	[demo_medical_requirements] [varchar](30) NULL,
	[demo_scrub_pin] [varchar](10) NULL,
	[demo_novel_user] [varchar](20) NULL,
	[demo_groupwise_password] [varchar](10) NULL,
	[demo_webxchange_user] [varchar](10) NULL,
	[demo_konosid] [varchar](10) NULL,
	[portfolio_cv_intro] [text] NULL,
	[portfolio_cv_settings] [varchar](50) NULL,
	[contact_email_secondary] [varchar](150) NULL,
	[orientation_date] [date] NULL,
	[orientation_comments] [text] NULL,
	[tmp_metsID] [varchar](50) NULL,
	[typeID] [int] NULL,
	[demo_name_degree] [varchar](20) NULL,
	[demo_aamc] [varchar](10) NULL,
	[contact_address_emergency_name] [varchar](100) NULL,
	[contact_address_emergency_relation] [varchar](100) NULL,
	[contact_address_emergency_phone] [varchar](25) NULL,
	[contact_address_emergency_line1] [varchar](100) NULL,
	[contact_address_emergency_line2] [varchar](100) NULL,
	[contact_address_emergency_city] [varchar](50) NULL,
	[contact_address_emergency_state] [varchar](50) NULL,
	[contact_address_emergency_zipcode] [varchar](15) NULL,
	[contact_address_emergency_country] [varchar](50) NULL,
	[demo_entry_date] [date] NULL,
	[setting_dutyhours_method] [int] NULL,
	[insurance_comments] [text] NULL,
	[acgme_residentID] [int] NULL,
	[pg_checkout_date] [date] NULL,
	[demo_ssn_encrypted] [varbinary](50) NULL,
	[compliance_comments] [text] NULL,
	[death_date] [date] NULL,
	[prescriptions_last_date] [date] NULL,
	[prescriptions_last_userID] [int] NULL,
	[prescriptions_last_programID] [int] NULL,
	[prescriptions_last_name] [varchar](100) NULL,
	[prescriptions_cover] [int] NULL,
	[demo_aoa] [int] NULL,
	[moonlighting_comments] [text] NULL,
	[demo_ssn_canadian] [int] NULL,
	[contact_longdistance] [varchar](15) NULL,
	[contact_tieline] [varchar](5) NULL,
	[gme_representative] [varchar](50) NULL,
	[setting_lock_schedule_header] [int] NULL,
	[certifications_license_date] [date] NULL,
	[demo_veteran_status] [varchar](30) NULL,
	[contact_paging_system] [varchar](30) NULL,
	[pg_research_eligible] [int] NULL,
	[pg_grant_eligible] [int] NULL,
	[custom_text1] [varchar](255) NULL,
	[custom_text2] [varchar](255) NULL,
	[custom_text3] [varchar](255) NULL,
	[custom_text4] [varchar](255) NULL,
	[custom_text5] [varchar](255) NULL,
	[custom_text6] [varchar](255) NULL,
	[custom_text7] [varchar](255) NULL,
	[custom_text8] [varchar](255) NULL,
	[custom_text9] [varchar](255) NULL,
	[custom_date1] [date] NULL,
	[custom_date2] [date] NULL,
	[custom_date3] [date] NULL,
	[custom_date4] [date] NULL,
	[custom_date5] [date] NULL,
	[custom_comments1] [text] NULL,
	[custom_comments2] [text] NULL,
	[custom_comments3] [text] NULL,
	[alumni_phone] [varchar](25) NULL,
	[alumni_email] [varchar](150) NULL,
	[alumni_comments] [text] NULL,
	[alumni_address_line1] [varchar](100) NULL,
	[alumni_address_line2] [varchar](100) NULL,
	[alumni_address_city] [varchar](100) NULL,
	[alumni_address_state] [varchar](50) NULL,
	[alumni_address_country] [varchar](50) NULL,
	[alumni_address_zipcode] [varchar](15) NULL,
	[alumni_status] [int] NULL,
	[contact_address_emergency_email] [varchar](150) NULL,
	[contact_address_emergency_phone_cell] [varchar](25) NULL,
	[contact_address_emergency_phone_work] [varchar](25) NULL,
	[setting_favorites] [int] NULL,
	[demo_labcoats] [varchar](10) NULL,
	[custom_text10] [varchar](255) NULL,
	[custom_text11] [varchar](255) NULL,
	[custom_text12] [varchar](255) NULL,
	[custom_text13] [varchar](255) NULL,
	[custom_text14] [varchar](255) NULL,
	[custom_text15] [varchar](255) NULL,
	[custom_text16] [varchar](255) NULL,
	[custom_text17] [varchar](255) NULL,
	[custom_text18] [varchar](255) NULL,
	[custom_text19] [varchar](255) NULL,
	[custom_text20] [varchar](255) NULL,
	[demo_alumni] [varchar](10) NULL,
	[demo_batch] [varchar](10) NULL,
	[demo_costcenter] [varchar](15) NULL,
	[demo_iowa_benefits] [char](3) NULL,
	[demo_iowa_datacoll] [char](3) NULL,
	[demo_iowa_parking] [char](3) NULL,
	[demo_iowa_souhcc] [char](3) NULL,
	[demo_language_spoken] [int] NULL,
	[demo_language_written] [int] NULL,
	[demo_locker] [varchar](10) NULL,
	[demo_locker_combination] [varchar](10) NULL,
	[demo_passport_country] [varchar](5) NULL,
	[demo_passport_number] [varchar](20) NULL,
	[pg_arab_board_date] [date] NULL,
	[pg_arab_board_level] [int] NULL,
	[pg_compensation] [varchar](10) NULL,
	[aamc_applicationID] [varchar](12) NULL,
	[demo_pecos] [int] NULL,
	[demo_name_alt_first] [varchar](30) NULL,
	[demo_ssn_tmp] [varchar](11) NULL,
	[work_pref_confirmed_at] [datetime] NULL,
	[work_pref_required] [int] NULL,
	[alumni_work_phone] [varchar](25) NULL,
	[alumni_work_email] [varchar](150) NULL,
	[alumni_work_comments] [text] NULL,
	[alumni_work_address_line1] [varchar](100) NULL,
	[alumni_work_address_line2] [varchar](100) NULL,
	[alumni_work_address_city] [varchar](100) NULL,
	[alumni_work_address_state] [varchar](50) NULL,
	[alumni_work_address_country] [varchar](50) NULL,
	[alumni_work_address_zipcode] [varchar](15) NULL,
	[deceased] [int] NULL,
	[UCSF_init_data_import_datetime] [datetime] NULL,
	[UCSF_last_data_import_datetime] [datetime] NULL,
 CONSTRAINT [PK_users_residents] PRIMARY KEY CLUSTERED 
(
	[profileID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [unq_users_residents] UNIQUE NONCLUSTERED 
(
	[userID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users_students]    Script Date: 9/1/2020 1:10:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users_students](
	[studentID] [int] NOT NULL,
	[userID] [int] NULL,
	[level] [int] NULL,
	[demo_employeeID] [varchar](15) NULL,
	[demo_birth_date] [datetime] NULL,
	[demo_name_middle] [varchar](25) NULL,
	[demo_name_title] [varchar](4) NULL,
	[demo_name_suffix] [varchar](6) NULL,
	[demo_name_alias] [varchar](100) NULL,
	[demo_name_degree] [varchar](20) NULL,
	[demo_aamc] [varchar](10) NULL,
	[demo_npi] [varchar](10) NULL,
	[demo_gender] [char](1) NULL,
	[demo_birth_place] [varchar](50) NULL,
	[demo_birth_place_country] [varchar](50) NULL,
	[demo_citizenship] [varchar](50) NULL,
	[demo_ethnicity] [varchar](50) NULL,
	[demo_visa_status] [varchar](30) NULL,
	[demo_visa_issued] [date] NULL,
	[demo_visa_exp] [date] NULL,
	[demo_visa_alien] [varchar](15) NULL,
	[demo_visa_comments] [text] NULL,
	[demo_sevis_id] [varchar](15) NULL,
	[demo_sevis_issued] [date] NULL,
	[demo_sevis_exp] [date] NULL,
	[demo_sevis_mailed] [date] NULL,
	[demo_sevis_comments] [text] NULL,
	[demo_i9_exp] [date] NULL,
	[demo_work_auth] [varchar](20) NULL,
	[demo_work_exp] [date] NULL,
	[demo_marital_status] [char](1) NULL,
	[demo_marital_spouse] [varchar](25) NULL,
	[demo_children] [varchar](100) NULL,
	[demo_comments] [text] NULL,
	[demo_cc_encode] [varchar](6) NULL,
	[contact_preferred] [int] NULL,
	[contact_phone_home] [varchar](25) NULL,
	[contact_phone_cell] [varchar](25) NULL,
	[contact_phone_work] [varchar](25) NULL,
	[contact_pager] [varchar](15) NULL,
	[contact_pager_alpha] [varchar](100) NULL,
	[contact_fax] [varchar](15) NULL,
	[contact_email_secondary] [varchar](150) NULL,
	[contact_mailbox] [varchar](20) NULL,
	[contact_address_current_line1] [varchar](100) NULL,
	[contact_address_current_line2] [varchar](100) NULL,
	[contact_address_current_city] [varchar](50) NULL,
	[contact_address_current_state] [varchar](50) NULL,
	[contact_address_current_country] [varchar](50) NULL,
	[contact_address_current_zipcode] [varchar](15) NULL,
	[contact_address_internal_line1] [varchar](100) NULL,
	[contact_address_internal_line2] [varchar](100) NULL,
	[contact_address_internal_city] [varchar](50) NULL,
	[contact_address_internal_state] [varchar](50) NULL,
	[contact_address_internal_country] [varchar](50) NULL,
	[contact_address_internal_zipcode] [varchar](15) NULL,
	[contact_address_permanent_line1] [varchar](100) NULL,
	[contact_address_permanent_line2] [varchar](100) NULL,
	[contact_address_permanent_city] [varchar](50) NULL,
	[contact_address_permanent_state] [varchar](50) NULL,
	[contact_address_permanent_country] [varchar](50) NULL,
	[contact_address_permanent_zipcode] [varchar](15) NULL,
	[contact_address_other_description] [varchar](100) NULL,
	[contact_address_other_line1] [varchar](100) NULL,
	[contact_address_other_line2] [varchar](100) NULL,
	[contact_address_other_city] [varchar](50) NULL,
	[contact_address_other_state] [varchar](50) NULL,
	[contact_address_other_country] [varchar](50) NULL,
	[contact_address_other_zipcode] [varchar](15) NULL,
	[contact_address_emergency_name] [varchar](100) NULL,
	[contact_address_emergency_relation] [varchar](100) NULL,
	[contact_address_emergency_phone] [varchar](25) NULL,
	[contact_address_emergency_line1] [varchar](100) NULL,
	[contact_address_emergency_line2] [varchar](100) NULL,
	[contact_address_emergency_city] [varchar](50) NULL,
	[contact_address_emergency_state] [varchar](50) NULL,
	[contact_address_emergency_zipcode] [varchar](15) NULL,
	[contact_address_emergency_country] [varchar](50) NULL,
	[contact_comments] [text] NULL,
	[education_comments] [text] NULL,
	[certifications_comments] [text] NULL,
	[training_comments] [text] NULL,
	[appt_comments] [text] NULL,
	[appt_enddate] [date] NULL,
	[appt_terminated] [date] NULL,
	[ps_activity] [int] NULL,
	[ps_activity_comments] [varchar](255) NULL,
	[photo] [int] NULL,
	[tests_comments] [text] NULL,
	[modification_date] [date] NULL,
	[start_date] [date] NULL,
	[start_date_projected] [date] NULL,
	[end_date_projected] [date] NULL,
	[immunization_comments] [text] NULL,
	[files_comments] [text] NULL,
	[awards_comments] [text] NULL,
	[immigration_comments] [text] NULL,
	[portfolio_cv_intro] [text] NULL,
	[portfolio_cv_settings] [varchar](20) NULL,
	[orientation_date] [date] NULL,
	[orientation_comments] [text] NULL,
	[general_comments] [text] NULL,
	[tmp_metsID] [int] NULL,
	[psv_status] [int] NULL,
	[pg_comments] [text] NULL,
	[pg_enddate] [date] NULL,
	[pg_terminated] [date] NULL,
	[demo_experience] [text] NULL,
	[demo_health] [text] NULL,
	[demo_housing] [int] NULL,
	[demo_nrmp] [varchar](10) NULL,
	[appt_withdraw_date] [date] NULL,
	[appt_withdraw_notes] [varchar](100) NULL,
	[typeID] [int] NULL,
	[setting_dutyhours_method] [int] NULL,
	[setting_evaluation_alert] [int] NULL,
	[demo_ssn_encrypted] [varbinary](50) NULL,
	[insurance_comments] [text] NULL,
	[cummulative_gpa] [decimal](5, 2) NULL,
	[demo_military] [int] NULL,
	[demo_residency] [int] NULL,
	[demo_plan] [int] NULL,
	[training_admit_termID] [int] NULL,
	[training_proj_grad_termID] [int] NULL,
	[enrollment_comments] [text] NULL,
	[compliance_comments] [text] NULL,
	[clerkshipID] [int] NULL,
	[aamc_comments] [text] NULL,
	[contact_ferpa_hold] [char](3) NULL,
	[demo_name_preferred] [varchar](50) NULL,
	[training_transfer_in] [int] NULL,
	[training_transfer_out] [int] NULL,
	[training_exchange] [int] NULL,
	[discipline_probation] [int] NULL,
	[discipline_probation_ever] [int] NULL,
	[demo_aoa] [int] NULL,
	[demo_discussion_room] [varchar](20) NULL,
	[demo_module] [varchar](20) NULL,
	[training_gradyear_projected] [int] NULL,
	[training_gradyear_actual] [int] NULL,
	[quartile] [int] NULL,
	[discipline_action] [varchar](255) NULL,
	[discipline_action_date] [date] NULL,
	[professionalism_comments] [text] NULL,
	[demo_desk] [varchar](20) NULL,
	[demo_role] [varchar](50) NULL,
	[contact_paging_system] [varchar](30) NULL,
	[demo_degree_type] [varchar](20) NULL,
	[demo_desk_number] [varchar](50) NULL,
	[custom_text1] [varchar](255) NULL,
	[custom_text2] [varchar](255) NULL,
	[custom_text3] [varchar](255) NULL,
	[custom_text4] [varchar](255) NULL,
	[custom_text5] [varchar](255) NULL,
	[custom_text6] [varchar](255) NULL,
	[custom_text7] [varchar](255) NULL,
	[custom_text8] [varchar](255) NULL,
	[custom_text9] [varchar](255) NULL,
	[custom_date1] [date] NULL,
	[custom_date2] [date] NULL,
	[custom_date3] [date] NULL,
	[custom_date4] [date] NULL,
	[custom_date5] [date] NULL,
	[custom_comments1] [text] NULL,
	[custom_comments2] [text] NULL,
	[custom_comments3] [text] NULL,
	[demo_name_alt_first] [varchar](30) NULL,
	[custom_text10] [varchar](255) NULL,
	[custom_text11] [varchar](255) NULL,
	[custom_text12] [varchar](255) NULL,
	[custom_text13] [varchar](255) NULL,
	[custom_text14] [varchar](255) NULL,
	[custom_text15] [varchar](255) NULL,
	[custom_text16] [varchar](255) NULL,
	[custom_text17] [varchar](255) NULL,
	[custom_text18] [varchar](255) NULL,
	[custom_text19] [varchar](255) NULL,
	[custom_text20] [varchar](255) NULL,
	[custom_date6] [date] NULL,
	[custom_date7] [date] NULL,
	[custom_date8] [date] NULL,
	[custom_date9] [date] NULL,
	[custom_date10] [date] NULL,
	[custom_comments4] [text] NULL,
	[custom_comments5] [text] NULL,
	[custom_comments6] [text] NULL,
	[UCSF_init_data_import_datetime] [datetime] NULL,
	[UCSF_last_data_import_datetime] [datetime] NULL,
 CONSTRAINT [PK_users_students] PRIMARY KEY CLUSTERED 
(
	[studentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users_faculty]    Script Date: 9/1/2020 1:10:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users_faculty](
	[facultyID] [int] NOT NULL,
	[userID] [int] NULL,
	[programID] [int] NULL,
	[specialty] [varchar](50) NULL,
	[contact_phone] [varchar](25) NULL,
	[contact_pager] [varchar](25) NULL,
	[title] [varchar](50) NULL,
	[interests_clinical] [text] NULL,
	[interests_research] [text] NULL,
	[contact_pager_alpha] [varchar](150) NULL,
	[contact_fax] [varchar](15) NULL,
	[contact_address_work] [varchar](255) NULL,
	[contact_address_home] [varchar](255) NULL,
	[biography] [text] NULL,
	[photo] [int] NULL,
	[notes] [text] NULL,
	[setting_evals_mentor_alert] [int] NULL,
	[spouse_name] [varchar](50) NULL,
	[children_names] [varchar](150) NULL,
	[setting_procedures_cert_alert] [int] NULL,
	[contact_address_work_line1] [varchar](100) NULL,
	[contact_address_work_line2] [varchar](100) NULL,
	[contact_address_work_city] [varchar](50) NULL,
	[contact_address_work_state] [varchar](50) NULL,
	[contact_address_work_zipcode] [varchar](15) NULL,
	[contact_address_home_line1] [varchar](100) NULL,
	[contact_address_home_line2] [varchar](100) NULL,
	[contact_address_home_city] [varchar](50) NULL,
	[contact_address_home_state] [varchar](50) NULL,
	[contact_address_home_zipcode] [varchar](15) NULL,
	[employeeID] [varchar](15) NULL,
	[name_suffix] [varchar](15) NULL,
	[contact_mailcode] [varchar](10) NULL,
	[deptID] [int] NULL,
	[staff_type] [varchar](25) NULL,
	[review_qtr] [int] NULL,
	[npi] [varchar](10) NULL,
	[name_prefix] [varchar](5) NULL,
	[tmp_metsID] [int] NULL,
	[universityID] [varchar](15) NULL,
	[portfolio_cv_intro] [text] NULL,
	[portfolio_cv_settings] [varchar](20) NULL,
	[dea_number] [varchar](20) NULL,
	[hire_date] [date] NULL,
	[setting_display_mentor_evals] [int] NULL,
	[contact_tieline] [varchar](5) NULL,
	[signature] [int] NULL,
	[contact_phone_home] [varchar](25) NULL,
	[contact_phone_cell] [varchar](25) NULL,
	[setting_low_score_director_alert] [int] NULL,
	[supervisor_userID] [int] NULL,
	[termination_date] [date] NULL,
	[setting_lock_schedule_header] [int] NULL,
	[auto_cme] [int] NULL,
	[contact_paging_system] [varchar](30) NULL,
	[setting_disable_report_memory] [int] NULL,
	[birth_date] [date] NULL,
	[setting_favorites] [int] NULL,
	[providerID] [varchar](15) NULL,
	[inst_start_date] [date] NULL,
	[inst_end_date] [date] NULL,
	[name_middle] [varchar](25) NULL,
	[demo_perid] [varchar](15) NULL,
	[resident_userID] [int] NULL,
	[gender] [varchar](10) NULL,
	[rank] [varchar](30) NULL,
	[altID] [varchar](50) NULL,
	[imc_register_type] [int] NULL,
	[typeID] [int] NULL,
	[faculty_deptID] [int] NULL,
	[UCSF_init_data_import_datetime] [datetime] NULL,
	[UCSF_last_data_import_datetime] [datetime] NULL,
 CONSTRAINT [PK_users_faculty] PRIMARY KEY CLUSTERED 
(
	[facultyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  View [dbo].[vw_user_employeeID]    Script Date: 9/1/2020 1:10:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE view [dbo].[vw_user_employeeID]
/*
select * from vw_user_employeeID

select userid,count(1)
from vw_user_employeeID 
group by userid
having count(1)>1 --none

select employeeID,count(1)
from vw_user_employeeID 
group by employeeID
having count(1)>1 --a lot due to test accounts

select * from vw_user_employeeID where employeeid='026570382'

--63872
--88167
select * from users where userid in (63872,88167)
*/
as

select userid,demo_employeeID as employeeID from users_residents where isnull(demo_employeeID,'')<>''
union
select userid,demo_employeeID as employeeID from users_students where isnull(demo_employeeID,'')<>''
union
select userid,employeeID as employeeID from users_admin where isnull(employeeID,'')<>''
union
select userid,employeeID as employeeID from users_finance where isnull(employeeID,'')<>''
union
select userid,employeeID as employeeID from users_coordinators where isnull(employeeID,'')<>''
union
select userid,employeeID as employeeID from users_gme where isnull(employeeID,'')<>''
union
select userid,employeeID as employeeID from users_faculty where isnull(employeeID,'')<>''

GO
/****** Object:  Table [dbo].[eh_evals_items]    Script Date: 9/1/2020 1:10:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[eh_evals_items](
	[itemID] [int] NOT NULL,
	[evaluationID] [int] NULL,
	[catID] [int] NULL,
	[item_type] [int] NULL,
	[item_order] [int] NULL,
	[item_status] [int] NULL,
	[question] [text] NULL,
	[question_type] [int] NULL,
	[question_required] [int] NULL,
	[question_optionsetID] [int] NULL,
	[header] [varchar](255) NULL,
	[header_introduction] [text] NULL,
	[descriptors] [int] NULL,
	[question_number] [varchar](15) NULL,
	[alertA] [varchar](255) NULL,
	[question_confidential] [int] NULL,
	[question_right] [text] NULL,
	[commentA] [varchar](255) NULL,
	[locked_itemID] [int] NULL,
	[locked_programID] [int] NULL,
	[locked_clerkshipID] [int] NULL,
	[all_descriptors] [int] NULL,
	[competency_catA] [varchar](30) NULL,
	[skip_display] [int] NULL,
	[skip_itemID] [int] NULL,
	[skip_optionA] [varchar](500) NULL,
	[notify_faculty_program] [int] NULL,
	[notify_resident_program] [int] NULL,
	[UCSF_init_data_import_datetime] [datetime] NULL,
	[UCSF_last_data_import_datetime] [datetime] NULL,
 CONSTRAINT [PK_eh_evals_items] PRIMARY KEY CLUSTERED 
(
	[itemID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users]    Script Date: 9/1/2020 1:10:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[userID] [int] NOT NULL,
	[usertype] [int] NULL,
	[iID] [int] NULL,
	[schoolID] [int] NULL,
	[username] [varchar](25) NULL,
	[password] [varchar](64) NULL,
	[firstname] [varchar](30) NULL,
	[lastname] [varchar](30) NULL,
	[email] [varchar](150) NULL,
	[duplicate] [int] NULL,
	[sa] [int] NULL,
	[active] [int] NULL,
	[access] [int] NULL,
	[access_forced] [int] NULL,
	[current] [int] NULL,
	[password_changed] [datetime] NULL,
	[ucA] [varchar](255) NULL,
	[ldap_dn] [varchar](200) NULL,
	[gcal_token] [varchar](50) NULL,
	[password_sha1] [varchar](40) NULL,
	[password_past_sha1] [varchar](244) NULL,
	[amcom_mid] [varchar](10) NULL,
	[lastname_tmp] [varchar](30) NULL,
	[external_passkey] [varchar](10) NULL,
	[recoveryID] [int] NULL,
	[tmp_metsID] [int] NULL,
	[UCSF_init_data_import_datetime] [datetime] NULL,
	[UCSF_last_data_import_datetime] [datetime] NULL,
 CONSTRAINT [PK_users] PRIMARY KEY CLUSTERED 
(
	[userID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[i_sites]    Script Date: 9/1/2020 1:10:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[i_sites](
	[siteID] [int] NOT NULL,
	[iID] [int] NULL,
	[schoolID] [int] NULL,
	[site_name] [varchar](100) NULL,
	[site_shortname] [varchar](20) NULL,
	[site_abbrev] [varchar](20) NULL,
	[site_status] [int] NULL,
	[calc_ime] [int] NULL,
	[calc_dme] [int] NULL,
	[site_type] [int] NULL,
	[programA] [text] NULL,
	[site_billed] [int] NULL,
	[site_contract_expires] [date] NULL,
	[site_notes] [text] NULL,
	[costreportID] [int] NULL,
	[billing_contact_name] [varchar](50) NULL,
	[billing_contact_phone] [varchar](50) NULL,
	[billing_contact_email] [varchar](100) NULL,
	[billing_address_street1] [varchar](100) NULL,
	[billing_address_street2] [varchar](100) NULL,
	[billing_address_city] [varchar](50) NULL,
	[billing_address_state] [varchar](20) NULL,
	[billing_address_zipcode] [varchar](15) NULL,
	[billing_address_country] [varchar](30) NULL,
	[site_contact_name] [varchar](50) NULL,
	[site_contact_phone] [varchar](50) NULL,
	[site_contact_email] [varchar](100) NULL,
	[site_address_street1] [varchar](100) NULL,
	[site_address_street2] [varchar](100) NULL,
	[site_address_city] [varchar](50) NULL,
	[site_address_state] [varchar](20) NULL,
	[site_address_zipcode] [varchar](15) NULL,
	[site_address_country] [varchar](28) NULL,
	[site_provnumber] [varchar](6) NULL,
	[site_nhl] [int] NULL,
	[UCSF_init_data_import_datetime] [datetime] NULL,
	[UCSF_last_data_import_datetime] [datetime] NULL,
 CONSTRAINT [PK_i_sites] PRIMARY KEY CLUSTERED 
(
	[siteID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[eh_responses_answers]    Script Date: 9/1/2020 1:10:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[eh_responses_answers](
	[answerID] [int] NOT NULL,
	[responseID] [int] NULL,
	[itemID] [int] NULL,
	[optionID] [int] NULL,
	[textresponse] [text] NULL,
	[flag_alert] [int] NULL,
	[UCSF_init_data_import_datetime] [datetime] NULL,
	[UCSF_last_data_import_datetime] [datetime] NULL,
 CONSTRAINT [PK_eh_responses_answers] PRIMARY KEY CLUSTERED 
(
	[answerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[eh_evals_questions_optionsets]    Script Date: 9/1/2020 1:10:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[eh_evals_questions_optionsets](
	[optionsetID] [int] NOT NULL,
	[programID] [int] NULL,
	[option_type] [int] NULL,
	[optionset_title] [varchar](150) NULL,
	[optionset_options] [int] NULL,
	[optionset_heading] [int] NULL,
	[optionset_exclude] [int] NULL,
	[optionset_milestones] [int] NULL,
	[optionset_hide] [int] NULL,
	[author_userID] [int] NULL,
	[mobile_friendly] [int] NULL,
	[UCSF_init_data_import_datetime] [datetime] NULL,
	[UCSF_last_data_import_datetime] [datetime] NULL,
 CONSTRAINT [PK_eh_evals_questions_optionsets] PRIMARY KEY CLUSTERED 
(
	[optionsetID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[i_programs]    Script Date: 9/1/2020 1:10:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[i_programs](
	[programID] [int] NOT NULL,
	[programname] [varchar](130) NULL,
	[programabbrev] [varchar](15) NULL,
	[iID] [int] NULL,
	[program_parentID] [int] NULL,
	[program_level] [int] NULL,
	[program_status] [int] NULL,
	[program_departmentID] [varchar](10) NULL,
	[program_shortcode] [varchar](10) NULL,
	[program_accred_refID] [int] NULL,
	[program_accred_body] [int] NULL,
	[program_care_type] [int] NULL,
	[component_reports] [int] NULL,
	[component_portal] [int] NULL,
	[component_conferences] [int] NULL,
	[component_procedures] [int] NULL,
	[component_evaluations] [int] NULL,
	[adminID] [int] NULL,
	[directorID] [int] NULL,
	[level_name] [varchar](20) NULL,
	[setting_notify_request_vacation] [int] NULL,
	[setting_notify_request_sick] [int] NULL,
	[setting_notify_request_conference] [int] NULL,
	[setting_notify_request_loa] [int] NULL,
	[fte_allotted] [float] NULL,
	[component_schedule] [int] NULL,
	[setting_ci] [int] NULL,
	[setting_schedule_teams] [int] NULL,
	[setting_notify_evaluation_queue] [int] NULL,
	[setting_tracking_certificationA] [varchar](500) NULL,
	[setting_tracking_testA] [varchar](500) NULL,
	[setting_evaluations_late] [int] NULL,
	[setting_timesheets_access] [int] NULL,
	[setting_evaluations_faculty_hide] [int] NULL,
	[setting_evaluations_faculty_group_release] [int] NULL,
	[setting_evaluations_procedure_eval] [int] NULL,
	[setting_evaluations_comp_avg] [int] NULL,
	[setting_evaluations_delivery_days] [int] NULL,
	[setting_residents_profile] [int] NULL,
	[setting_procedures_competent] [int] NULL,
	[setting_procedures_sort] [int] NULL,
	[setting_procedures_verify] [int] NULL,
	[setting_procedures_verify_batch] [int] NULL,
	[component_conferences_alt] [varchar](255) NULL,
	[component_procedures_alt] [varchar](255) NULL,
	[component_evaluations_alt] [varchar](255) NULL,
	[evaluations_queue] [int] NULL,
	[care_type] [int] NULL,
	[component_mobile] [int] NULL,
	[setting_procedures_multiple] [int] NULL,
	[setting_evaluations_alert_admin] [int] NULL,
	[setting_evaluations_alert_pd] [int] NULL,
	[setting_evaluations_alert_ad] [int] NULL,
	[setting_evaluations_alert_type] [int] NULL,
	[setting_evaluations_resident_view] [int] NULL,
	[setting_evaluations_resident_alert_comments] [int] NULL,
	[program_payroll] [varchar](10) NULL,
	[program_contact_mail] [varchar](100) NULL,
	[program_iris_code] [int] NULL,
	[setting_dutyhours_extension] [int] NULL,
	[iris_reimbursable] [int] NULL,
	[component_pda] [int] NULL,
	[setting_tracking_immunA] [varchar](500) NULL,
	[setting_faculty_profile] [int] NULL,
	[backup_adminID] [int] NULL,
	[backup_adminID2] [int] NULL,
	[setting_timesheets_alert_admin] [int] NULL,
	[setting_conferences_attendance_faculty] [int] NULL,
	[setting_conferences_lecturer_alert] [int] NULL,
	[setting_procedures_certification] [int] NULL,
	[setting_evaluations_initiatedA] [varchar](255) NULL,
	[setting_evaluations_signature] [int] NULL,
	[setting_evaluations_review] [int] NULL,
	[default_typeID] [int] NULL,
	[setting_email_admin_release] [int] NULL,
	[setting_procedures_supervisors] [int] NULL,
	[setting_procedures_patientID] [int] NULL,
	[setting_dutyhours_method] [int] NULL,
	[setting_evaluations_rinitiatedA] [varchar](255) NULL,
	[setting_evaluations_reciprocal] [int] NULL,
	[setting_gmetoday] [int] NULL,
	[setting_gmetoday_programID] [int] NULL,
	[setting_gmetoday_specialty] [varchar](5) NULL,
	[setting_curriculum_email] [int] NULL,
	[setting_curriculum_primary_service] [int] NULL,
	[setting_conferences_time] [int] NULL,
	[setting_evaluations_remove_disable] [int] NULL,
	[setting_evaluations_remove_alert] [int] NULL,
	[setting_evaluations_remove_comment] [int] NULL,
	[setting_evaluations_resident_aggregate] [int] NULL,
	[setting_evaluations_faculty_aggregate] [int] NULL,
	[component_portfolio] [int] NULL,
	[component_portfolio_alt] [varchar](255) NULL,
	[setting_requests_processA] [varchar](50) NULL,
	[setting_evaluations_kiosk] [int] NULL,
	[setting_evaluations_kiosk_resident_evaluationA] [varchar](255) NULL,
	[setting_evaluations_kiosk_faculty_evaluationA] [varchar](255) NULL,
	[setting_evaluations_kiosk_program_evaluationA] [varchar](255) NULL,
	[setting_evaluations_service_heads] [int] NULL,
	[setting_access_evaluations_service_head] [int] NULL,
	[setting_evaluations_service_heads_access] [int] NULL,
	[setting_schedule_amion] [int] NULL,
	[setting_schedule_amion_lo] [varchar](20) NULL,
	[setting_schedule_amion_staffA] [varchar](255) NULL,
	[component_clinichours] [int] NULL,
	[deptID] [int] NULL,
	[badge_specialty] [varchar](50) NULL,
	[slots_comments] [text] NULL,
	[program_location] [int] NULL,
	[discipline_refID] [int] NULL,
	[certificate_signatureA] [varchar](255) NULL,
	[setting_conferences_upload] [int] NULL,
	[track_programID] [int] NULL,
	[track_levels] [int] NULL,
	[setting_schedule_faculty] [int] NULL,
	[setting_evaluations_delivery_clinics] [int] NULL,
	[associate_directorID1] [int] NULL,
	[associate_directorID2] [int] NULL,
	[associate_directorID3] [int] NULL,
	[setting_conferences_public] [int] NULL,
	[setting_procedures_certify_last] [int] NULL,
	[setting_evaluations_tiered_days] [int] NULL,
	[setting_absences] [int] NULL,
	[setting_absences_block] [int] NULL,
	[setting_clinics_visitors] [int] NULL,
	[setting_conferences_attendance_style] [int] NULL,
	[setting_conferences_attendance_instructions] [varchar](255) NULL,
	[setting_procedures_other] [int] NULL,
	[setting_procedures_supervisors_residents] [int] NULL,
	[setting_procedures_require_supervisor] [int] NULL,
	[setting_procedures_roleA] [varchar](20) NULL,
	[setting_evaluations_tiered] [int] NULL,
	[setting_evaluations_objectives] [int] NULL,
	[setting_conferences_attendance_students] [int] NULL,
	[setting_evaluations_link] [int] NULL,
	[setting_portfolio_ilp] [int] NULL,
	[setting_portfolio_reminder] [int] NULL,
	[setting_conferences_identify_absences] [int] NULL,
	[setting_conferences_attendance_visitors] [int] NULL,
	[setting_procedures_force] [int] NULL,
	[setting_procedures_diagnosis_force] [int] NULL,
	[setting_procedures_diagnosis] [int] NULL,
	[setting_procedures_diagnosis_multiple] [int] NULL,
	[setting_procedures_visits] [int] NULL,
	[program_division] [varchar](80) NULL,
	[setting_evaluations_rrinitiatedA] [varchar](255) NULL,
	[setting_evaluations_rsinitiatedA] [varchar](255) NULL,
	[setting_evaluations_ffinitiatedA] [varchar](255) NULL,
	[settings_clinics_prepopulate] [int] NULL,
	[settings_conf_prepopulate] [int] NULL,
	[component_portfolio_faculty] [int] NULL,
	[component_portfolio_faculty_alt] [varchar](255) NULL,
	[setting_procedures_clinics] [int] NULL,
	[certificate_format] [int] NULL,
	[setting_timesheets_ruleA] [varchar](20) NULL,
	[setting_evaluations_email_resident] [int] NULL,
	[setting_evaluations_review_alert] [int] NULL,
	[setting_clinics_faculty] [int] NULL,
	[setting_procedures_shift_log] [int] NULL,
	[setting_preceptor_email] [int] NULL,
	[setting_conferences_excused] [int] NULL,
	[setting_conferences_credit_extra] [int] NULL,
	[setting_evaluator_name_mask] [int] NULL,
	[program_default_siteID] [int] NULL,
	[associate_directorID4] [int] NULL,
	[associate_directorID5] [int] NULL,
	[associate_directorID6] [int] NULL,
	[associate_directorID7] [int] NULL,
	[associate_directorID8] [int] NULL,
	[certificate_programname] [varchar](80) NULL,
	[procedures_locationID] [int] NULL,
	[setting_evaluations_kiosk_student_evaluationID] [int] NULL,
	[setting_tracking_complianceA] [varchar](500) NULL,
	[dept_chief_userID] [int] NULL,
	[setting_evaluations_ris] [int] NULL,
	[setting_evaluations_ris_days] [int] NULL,
	[setting_evaluations_ris_days_expiration] [int] NULL,
	[setting_evaluations_ris_rof_evaluationID] [int] NULL,
	[setting_evaluations_ris_for_evaluationID] [int] NULL,
	[setting_evaluations_ris_released] [int] NULL,
	[setting_evaluations_ris_required] [int] NULL,
	[setting_evaluations_ris_recommended] [int] NULL,
	[setting_evaluations_ris_outside] [int] NULL,
	[portal_program_residents] [text] NULL,
	[portal_program_usertypeA] [varchar](10) NULL,
	[setting_conferences_lecturer_alert2] [int] NULL,
	[setting_conferences_attendance_outside] [int] NULL,
	[setting_clinics_populate] [int] NULL,
	[setting_evaluations_ris_alert_days] [int] NULL,
	[setting_evaluations_patient] [int] NULL,
	[setting_evaluations_patient_num] [int] NULL,
	[setting_schedule_public] [int] NULL,
	[program_pcf_code] [varchar](8) NULL,
	[program_pcf_class] [varchar](2) NULL,
	[dept_approver_userID] [int] NULL,
	[setting_conferences_rss] [int] NULL,
	[setting_conferences_sort_level] [int] NULL,
	[portal_program_faculty] [text] NULL,
	[portal_program_admins] [text] NULL,
	[setting_timesheets_alert_director] [int] NULL,
	[setting_timesheets_alert_adirectors] [int] NULL,
	[setting_schedule_sick_remove] [int] NULL,
	[setting_schedule_absences_display] [int] NULL,
	[setting_schedule_faculty_weekly] [int] NULL,
	[setting_conferences_async] [int] NULL,
	[setting_conferences_late] [int] NULL,
	[setting_resources_released_residents] [int] NULL,
	[program_supervisor] [varchar](10) NULL,
	[program_closed_date] [date] NULL,
	[setting_milestones] [int] NULL,
	[setting_milestones_epas] [int] NULL,
	[setting_milestones_objectives] [int] NULL,
	[setting_milestones_inherit_programA] [varchar](50) NULL,
	[setting_disable_verification_certified] [int] NULL,
	[setting_disable_evaluation_certified] [int] NULL,
	[setting_evaluations_student] [int] NULL,
	[setting_evaluations_student_num] [int] NULL,
	[clerkship_director_userID] [int] NULL,
	[setting_evaluations_descriptors] [int] NULL,
	[setting_procedures_batch] [int] NULL,
	[setting_evaluations_scale_repeat] [int] NULL,
	[setting_milestones_question_optionsetID] [int] NULL,
	[setting_milestones_achievements] [int] NULL,
	[setting_milestones_pgy_start] [int] NULL,
	[setting_milestones_pgy_end] [int] NULL,
	[cme_logo] [varchar](100) NULL,
	[setting_schedule_amion_offcycle] [int] NULL,
	[setting_conferences_attendance_self] [int] NULL,
	[setting_procedures_diagnosis_roleA] [varchar](16) NULL,
	[setting_absences_notify] [int] NULL,
	[setting_billing_hours] [decimal](3, 1) NULL,
	[setting_milestones_objectives_bylevel] [int] NULL,
	[setting_milestones_progress] [int] NULL,
	[setting_milestones_progress_objectives_threshold] [int] NULL,
	[setting_milestones_progress_objectives_avg] [decimal](2, 1) NULL,
	[setting_conferences_show_barcode] [int] NULL,
	[setting_schedule_public_absences] [int] NULL,
	[setting_iris_didactics_overrideA] [varchar](255) NULL,
	[setting_evaluations_ris_releases] [int] NULL,
	[setting_milestones_evaltypeA] [varchar](30) NULL,
	[setting_curriculum_email_clinic] [int] NULL,
	[mayo_funding_code] [varchar](3) NULL,
	[mayo_pau] [varchar](6) NULL,
	[setting_milestones_progress_residents] [int] NULL,
	[setting_milestones_progress_headers] [int] NULL,
	[setting_milestones_competency_orderA] [varchar](30) NULL,
	[setting_milestones_progress_objectives_percent] [int] NULL,
	[setting_evaluations_self_released] [int] NULL,
	[setting_evaluations_self_offprogram] [int] NULL,
	[setting_services_display_absences] [int] NULL,
	[setting_conferences_presenter_name] [int] NULL,
	[setting_milestones_elements_services] [int] NULL,
	[setting_conferences_codereadr] [int] NULL,
	[setting_schedule_qgenda] [int] NULL,
	[setting_schedule_qgenda_companykey] [varchar](50) NULL,
	[setting_procedures_diagnosis_code] [int] NULL,
	[setting_custom_dutyhours] [int] NULL,
	[setting_custom_dutyhours_options] [varchar](255) NULL,
	[setting_custom_dutyhours2] [int] NULL,
	[setting_custom_dutyhours2_options] [varchar](255) NULL,
	[program_accred_org] [varchar](20) NULL,
	[program_accred_date] [date] NULL,
	[program_accred_number] [varchar](12) NULL,
	[setting_schedule_shiftadmin] [int] NULL,
	[setting_schedule_shiftadmin_key] [varchar](50) NULL,
	[setting_schedule_spinfusion] [int] NULL,
	[setting_schedule_spinfusion_key] [varchar](100) NULL,
	[setting_verify] [int] NULL,
	[setting_verify_intro] [text] NULL,
	[setting_verify_default_dtID] [int] NULL,
	[custom_text1] [varchar](255) NULL,
	[custom_text2] [varchar](255) NULL,
	[custom_text3] [varchar](255) NULL,
	[custom_text4] [varchar](255) NULL,
	[custom_text5] [varchar](255) NULL,
	[program_timezone] [varchar](50) NULL,
	[setting_epas_question_optionsetID] [int] NULL,
	[setting_elements_question_optionsetID] [int] NULL,
	[setting_milestones_progress_extra] [int] NULL,
	[setting_milestones_progress_na] [int] NULL,
	[setting_conferences_change_notifications] [int] NULL,
	[iris_orientation] [int] NULL,
	[setting_enable_ape] [int] NULL,
	[setting_milestones_competency_questions] [int] NOT NULL,
	[setting_schedule_opentempo] [int] NULL,
	[setting_schedule_opentempo_access] [varchar](255) NULL,
	[setting_schedule_momentum] [int] NULL,
	[setting_schedule_momentum_access] [varchar](255) NULL,
	[setting_lab_coat_formatting] [varchar](512) NULL,
	[setting_procedures_patient] [int] NULL,
	[setting_procedures_role_verification] [varchar](64) NULL,
	[setting_evaluations_resident_hide] [int] NULL,
	[setting_evaluations_resident_group_release] [int] NULL,
	[residents_to_view_progress_report_flag] [int] NULL,
	[residents_to_view_subcompetency_comments_flag] [int] NULL,
	[residents_to_view_general_ccc_comments_flag] [int] NULL,
	[setting_evals_expiration_days] [int] NULL,
	[setting_evals_expiration_enabled] [int] NULL,
	[violation_required_comment_1_in_7] [int] NULL,
	[violation_required_comment_80_per_week] [int] NULL,
	[UCSF_init_data_import_datetime] [datetime] NULL,
	[UCSF_last_data_import_datetime] [datetime] NULL,
 CONSTRAINT [PK_i_programs] PRIMARY KEY CLUSTERED 
(
	[programID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[eh_outside]    Script Date: 9/1/2020 1:10:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[eh_outside](
	[outsideID] [int] NOT NULL,
	[firstname] [varchar](50) NULL,
	[gme] [int] NULL,
	[lastname] [varchar](50) NULL,
	[usertype] [int] NULL,
	[email] [varchar](150) NULL,
	[location] [varchar](100) NULL,
	[location_abbrev] [varchar](10) NULL,
	[outside_status] [int] NULL,
	[altID] [varchar](50) NULL,
	[salutation] [varchar](10) NULL,
	[UCSF_init_data_import_datetime] [datetime] NULL,
	[UCSF_last_data_import_datetime] [datetime] NULL,
 CONSTRAINT [PK__eh_outsi__AD2FEC437E37BEF6] PRIMARY KEY CLUSTERED 
(
	[outsideID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vw_byoutside_evaluations]    Script Date: 9/1/2020 1:10:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vw_byoutside_evaluations]
AS
SELECT        ret.Evaluation_Type_ID, ret.Evaluation_Type, eval.evaluationID, eval.title AS Evaluation_title, evaluatee.userID AS evaluatee_userid, evaluatee.lastname AS evaluatee_lastname, evaluatee.firstname AS evaluatee_firstname, 
                         eid_uevaluatee.employeeID AS evaluatee_employeeID, out_evaluator.outsideID AS evaluator_userid, out_evaluator.lastname AS evaluator_lastname, out_evaluator.firstname AS evaluator_firstname, NULL 
                         AS evaluator_employeeID, out_evaluator.email AS evaluator_email, ei.itemID, ei.item_order, ei.question, ei.question_type, resp.issue_date, resp.completion_date, resp.response_title, resp.rotation_start_date, 
                         resp.rotation_end_date, resp.responseID, REPLACE(REPLACE(CONVERT(varchar(MAX), ans.textresponse), CHAR(10), ''), CHAR(13), '') AS textresponse, eqoo.optionID, eqoo.optionsetID, eqoo.option_value, eqoo.option_heading, 
                         eqoo.option_title, eqoo.option_value_scaled, eqoo.option_value_milestones, cs.clerkshipID, cs.clerkship_name, cs.clerkship_abbrev, cs.clerkship_number, s.siteID, s.site_name, s.site_shortname, s.site_abbrev, p.programID, 
                         p.programname, p.programabbrev, resp.student_enrollmentID, cs.parentID AS clerkship_parentid, resp.response_status
FROM            dbo.eh_evals AS eval LEFT OUTER JOIN
                         dbo.eh_evals_items AS ei ON ei.evaluationID = eval.evaluationID LEFT OUTER JOIN
                         dbo.eh_evals_questions_optionsets AS eqo ON eqo.optionsetID = ei.question_optionsetID INNER JOIN
                         dbo.eh_responses AS resp ON resp.evaluationID = eval.evaluationID INNER JOIN
                         dbo.eh_outside AS out_evaluator ON resp.evaluator_outsideID = out_evaluator.outsideID LEFT OUTER JOIN
                         dbo.users AS evaluatee ON evaluatee.userID = resp.evaluatee_userID LEFT OUTER JOIN
                         dbo.vw_user_employeeID AS eid_uevaluatee ON eid_uevaluatee.userid = evaluatee.userID INNER JOIN
                         dbo.tbl_ref_evaluation_type AS ret ON ret.Evaluation_Type_ID_MedHub = resp.eval_type LEFT OUTER JOIN
                         dbo.eh_responses_answers AS ans ON ans.responseID = resp.responseID AND ans.itemID = ei.itemID LEFT OUTER JOIN
                         dbo.eh_evals_questions_optionsets_options AS eqoo ON eqoo.optionID = ans.optionID LEFT OUTER JOIN
                         dbo.i_clerkships AS cs ON cs.clerkshipID = resp.clerkshipID LEFT OUTER JOIN
                         dbo.i_sites AS s ON s.siteID = cs.primary_siteID LEFT OUTER JOIN
                         dbo.i_programs AS p ON p.programID = resp.programID
WHERE        (ret.Evaluation_Type_ID IN (18, 21))
GO
/****** Object:  View [dbo].[vw_ofoutside_evaluations]    Script Date: 9/1/2020 1:10:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vw_ofoutside_evaluations]
AS
SELECT        ret.Evaluation_Type_ID, ret.Evaluation_Type, eval.evaluationID, eval.title AS Evaluation_title, out_evaluatee.outsideID AS evaluatee_userid, out_evaluatee.lastname AS evaluatee_lastname, 
                         out_evaluatee.firstname AS evaluatee_firstname, NULL AS evaluatee_employeeID, evaluator.userID AS evaluator_userid, evaluator.lastname AS evaluator_lastname, evaluator.firstname AS evaluator_firstname, 
                         eid_evaluator.employeeID AS evaluator_employeeID, evaluator.email AS evaluator_email, ei.itemID, ei.item_order, ei.question, ei.question_type, resp.issue_date, resp.completion_date, resp.response_title, 
                         resp.rotation_start_date, resp.rotation_end_date, resp.responseID, REPLACE(REPLACE(CONVERT(varchar(MAX), ans.textresponse), CHAR(10), ''), CHAR(13), '') AS textresponse, eqoo.optionID, eqoo.optionsetID, 
                         eqoo.option_value, eqoo.option_heading, eqoo.option_title, eqoo.option_value_scaled, eqoo.option_value_milestones, cs.clerkshipID, cs.clerkship_name, cs.clerkship_abbrev, cs.clerkship_number, s.siteID, s.site_name, 
                         s.site_shortname, s.site_abbrev, p.programID, p.programname, p.programabbrev, resp.student_enrollmentID, resp.response_status
FROM            dbo.eh_evals AS eval INNER JOIN
                         dbo.eh_evals_items AS ei ON ei.evaluationID = eval.evaluationID LEFT OUTER JOIN
                         dbo.eh_evals_questions_optionsets AS eqo ON eqo.optionsetID = ei.question_optionsetID INNER JOIN
                         dbo.eh_responses AS resp ON resp.evaluationID = eval.evaluationID INNER JOIN
                         dbo.eh_outside AS out_evaluatee ON resp.evaluatee_outsideID = out_evaluatee.outsideID LEFT OUTER JOIN
                         dbo.users AS evaluator ON evaluator.userID = resp.evaluator_userID LEFT OUTER JOIN
                         dbo.vw_user_employeeID AS eid_evaluator ON eid_evaluator.userid = evaluator.userID LEFT OUTER JOIN
                         dbo.tbl_ref_evaluation_type AS ret ON ret.Evaluation_Type_ID_MedHub = resp.eval_type LEFT OUTER JOIN
                         dbo.eh_responses_answers AS ans ON ans.responseID = resp.responseID AND ans.itemID = ei.itemID LEFT OUTER JOIN
                         dbo.eh_evals_questions_optionsets_options AS eqoo ON eqoo.optionID = ans.optionID LEFT OUTER JOIN
                         dbo.i_clerkships AS cs ON cs.clerkshipID = resp.clerkshipID LEFT OUTER JOIN
                         dbo.i_sites AS s ON s.siteID = cs.primary_siteID LEFT OUTER JOIN
                         dbo.i_programs AS p ON p.programID = resp.programID
WHERE        (resp.eval_type IN (16, 17))
GO
/****** Object:  Table [dbo].[users_students_enrollment]    Script Date: 9/1/2020 1:10:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users_students_enrollment](
	[enrollmentID] [int] NOT NULL,
	[userID] [int] NULL,
	[termID] [int] NULL,
	[courseID] [int] NULL,
	[class_number] [varchar](10) NULL,
	[class_section] [varchar](5) NULL,
	[enrollment_status] [int] NULL,
	[grading_basis] [varchar](10) NULL,
	[clock_hours] [decimal](6, 1) NULL,
	[class_grade] [varchar](5) NULL,
	[start_date] [date] NULL,
	[end_date] [date] NULL,
	[clerkshipID] [int] NULL,
	[block_periodID] [int] NULL,
	[lotteryID] [int] NULL,
	[waitlist_order] [int] NULL,
	[enrollment_notes] [varchar](512) NULL,
	[foreignID] [int] NULL,
	[lock_receipt] [varchar](12) NULL,
	[created_by_userID] [int] NULL,
	[grade_released] [datetime] NULL,
	[sync_error] [int] NULL,
	[UCSF_init_data_import_datetime] [datetime] NULL,
	[UCSF_last_data_import_datetime] [datetime] NULL,
 CONSTRAINT [PK_users_students_enrollment] PRIMARY KEY CLUSTERED 
(
	[enrollmentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[i_clerkships_groups]    Script Date: 9/1/2020 1:10:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[i_clerkships_groups](
	[clerkship_groupID] [int] NOT NULL,
	[group_name] [varchar](30) NULL,
	[standard_yearA] [varchar](20) NULL,
	[deferred_yearA] [varchar](20) NULL,
	[status] [int] NULL,
	[group_abbrev] [varchar](15) NULL,
	[schoolID] [int] NULL,
	[setting_group_self_enrollment] [int] NULL,
	[group_required] [int] NULL,
	[self_enrollment_window_start] [int] NULL,
	[self_enrollment_window_length] [int] NULL,
	[self_enrollment_auto_approve] [int] NULL,
	[waitlist_auto_approve] [int] NULL,
	[UCSF_init_data_import_datetime] [datetime] NULL,
	[UCSF_last_data_import_datetime] [datetime] NULL,
 CONSTRAINT [PK_i_clerkships_groups] PRIMARY KEY CLUSTERED 
(
	[clerkship_groupID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users_students_enrollment_grades]    Script Date: 9/1/2020 1:10:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users_students_enrollment_grades](
	[gradeID] [int] NOT NULL,
	[userID] [int] NULL,
	[enrollmentID] [int] NULL,
	[grade_official] [varchar](10) NULL,
	[grade_numeric] [decimal](5, 2) NULL,
	[grade_componentA] [varchar](255) NULL,
	[date_submitted] [datetime] NULL,
	[sync_status] [varchar](255) NULL,
	[eh_responseID] [int] NULL,
	[sync_error] [int] NULL,
	[UCSF_init_data_import_datetime] [datetime] NULL,
	[UCSF_last_data_import_datetime] [datetime] NULL,
 CONSTRAINT [PK_users_students_enrollment_grades] PRIMARY KEY CLUSTERED 
(
	[gradeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vw_users_students_enrollment_grades_last_submitted]    Script Date: 9/1/2020 1:10:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vw_users_students_enrollment_grades_last_submitted]

/*
Purpose: 
Notes:
Usage: select * from vw_users_students_enrollment_grades_last_submitted
Revisions:
Date       Developer Name   Purpose
---------- ---------------- -----------------------------------------------------------------------
11/14/2018  BK              Original creation

*/
as

select *
from dbo.users_students_enrollment_grades g1
where not exists(
	select 1
	from dbo.users_students_enrollment_grades g2
	where g1.enrollmentID=g2.enrollmentID
	and g1.date_submitted<g2.date_submitted)









            






















GO
/****** Object:  Table [dbo].[ref_students_blocks_periods]    Script Date: 9/1/2020 1:10:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ref_students_blocks_periods](
	[block_periodID] [int] NOT NULL,
	[blockID] [int] NULL,
	[clerkshipID] [int] NULL,
	[termID] [int] NULL,
	[start_date] [date] NULL,
	[end_date] [date] NULL,
	[UCSF_init_data_import_datetime] [datetime] NULL,
	[UCSF_last_data_import_datetime] [datetime] NULL,
 CONSTRAINT [PK__ref_stud__B271694D316D4A39] PRIMARY KEY CLUSTERED 
(
	[block_periodID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ref_students_terms]    Script Date: 9/1/2020 1:10:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ref_students_terms](
	[termID] [int] NOT NULL,
	[term_foreignID] [varchar](10) NULL,
	[term_name] [varchar](50) NULL,
	[start_date] [date] NULL,
	[end_date] [date] NULL,
	[rotationsetID] [int] NULL,
	[schoolID] [int] NULL,
	[UCSF_init_data_import_datetime] [datetime] NULL,
	[UCSF_last_data_import_datetime] [datetime] NULL,
 CONSTRAINT [PK_ref_students_terms] PRIMARY KEY CLUSTERED 
(
	[termID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vw_medhub_student_schedule]    Script Date: 9/1/2020 1:10:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE view [dbo].[vw_medhub_student_schedule]

/*
Purpose: SOM Dashboard student data source
Notes:
Usage: SELECT * FROM vw_medhub_student_schedule where order by lastname,firstname,[start_date],end_date
Revisions:
Date       Developer Name   Purpose
---------- ---------------- -----------------------------------------------------------
08/22/2018  BK              Original creation
10/11/2018	BK				Adjusted to use the term by mapping with block_periodID
11/14/2018	BK				Added "grade_official" and added filter on the completion_date
							to remove duplicate schedules
12/19/2018	BK				Added "term_start_date" & "term_end_date"
01/25/2019	BK				Removed filter on evaluationID=4470 as grades can be submitted with other forms
							Added val_type=18 (faculty evaluation of student)
04/29/2019	BK				Added "date_submitted"
01/10/2020	BK				Added "parent_clerkshipID","parent_clerkship_name"
06/09/2020	BK				Added "Active_Student" 

*/


as

select se.enrollmentID,se.userID,us.demo_employeeID as employeeID,u.firstname,u.lastname,
se.termID,rt.term_name,se.[start_date],se.end_date,rs.site_shortname,
se.clerkshipID,rc.clerkship_name,rcg.group_abbrev,
se.class_grade,r.completion_date,r.response_status,gls.grade_official,
rt.[start_date] as term_start_date,rt.end_date as term_end_date,gls.date_submitted,
rc.parentid as parent_clerkshipID,rcp.clerkship_name as parent_clerkship_name,
u.[current] as Active_Student
from [dbo].[users_students_enrollment] se
inner join [dbo].[users] u on u.userID=se.userID
inner join [dbo].[users_students] us on us.userID=u.userID
inner join [dbo].[i_clerkships] rc on rc.clerkshipID=se.clerkshipID
left join [dbo].[i_sites] rs on rs.siteID=rc.primary_siteID
left join [dbo].[i_clerkships_groups] rcg on rcg.clerkship_groupID=rc.clerkship_groupID
left join dbo.ref_students_blocks_periods sbp on sbp.block_periodID=se.block_periodID
left join [dbo].[ref_students_terms] rt on rt.termID=sbp.termID
left join [dbo].[eh_responses] r on r.student_enrollmentID=se.enrollmentID and r.completion_date is not null 
		and r.eval_type=18
left join [dbo].[vw_users_students_enrollment_grades_last_submitted] gls on gls.enrollmentID=se.enrollmentID
left join [dbo].[i_clerkships] rcp on rcp.clerkshipID=rc.parentid
where se.enrollment_status=1 --enrolled
GO
/****** Object:  View [dbo].[vw_completed_evaluations]    Script Date: 9/1/2020 1:10:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO










CREATE view [dbo].[vw_completed_evaluations]
/*
Purpose: 
Notes:
Usage: select * from vw_completed_evaluations	order by evaluationID,responseID,item_order
Revisions:
Date       Developer Name   Purpose
---------- ---------------- -----------------------------------------------------------------------
03/25/2019  BK              Removed char(10) & char(13) in text response
04/17/2019	BK				Added student_enrollmentID
05/08/2019	BK				Added outsider info
*/

as

select 
resp.responseID,ret.Evaluation_Type_ID,ret.Evaluation_Type,
eval.evaluationID,eval.title as Evaluation_title,
evaluatee.userid as student_userid,evaluatee.lastname as student_lastname,evaluatee.firstname as student_firstname,eid_uevaluatee.employeeID as student_employeeID,
evaluator.userid as evaluator_userid,evaluator.lastname as evaluator_lastname,evaluator.firstname as evaluator_firstname,eid_evaluator.employeeID as evaluator_employeeID,
ei.itemID,ei.item_order,ei.question,ei.question_type,
resp.issue_date,resp.completion_date,resp.response_title,resp.rotation_start_date,resp.rotation_end_date,resp.student_enrollmentID,
replace(replace(convert(varchar(max),ans.textresponse),char(10),''),char(13),'') as textresponse,
eqoo.optionID,eqoo.optionsetID,eqoo.option_value,eqoo.option_heading,eqoo.option_title,eqoo.option_value_scaled,eqoo.option_value_milestones,
cs.clerkshipID,cs.clerkship_name,cs.clerkship_abbrev,cs.clerkship_number,
s.siteID,s.site_name,s.site_shortname,s.site_abbrev,ans.responseID as responseID_answer,
p.programID,p.programname,p.programabbrev,
resp.evaluatee_outsideID,o1.firstname as evaluatee_outsider_firstname,o1.lastname as evaluatee_outsider_lastname,
resp.evaluator_outsideID,o2.firstname as evaluator_outsider_firstname,o2.lastname as evaluator_outsider_lastname
from eh_evals eval
inner join eh_evals_Items ei on ei.evaluationID=eval.evaluationID
left join eh_evals_questions_optionsets eqo on eqo.optionsetid=ei.question_optionsetid
--inner join eh_evals_questions_optionsets_headers eqoh on eqoh.optionsetid=ei.question_optionsetid
inner join eh_responses resp on resp.evaluationID=eval.evaluationID
left join users evaluator on evaluator.userid=resp.evaluator_userid
left join users evaluatee on evaluatee.userid=evaluatee_userid
left join vw_user_employeeID eid_evaluator on eid_evaluator.userid=evaluator.userid --to get evaluator's employee id
left join vw_user_employeeID eid_uevaluatee on eid_uevaluatee.userid=evaluatee.userid --to get student's employee id
inner join tbl_ref_evaluation_type ret on ret.Evaluation_Type_ID_MedHub=resp.eval_type
left join eh_responses_answers ans on ans.responseID=resp.responseID and ans.itemID=ei.itemID
left join eh_evals_questions_optionsets_options eqoo on eqoo.optionID=ans.optionID
left join i_clerkships cs on cs.clerkshipID=resp.clerkshipID
left join i_sites s on s.siteID=cs.primary_siteID
left join i_programs p on p.programID=resp.programID
left join eh_outside o1 on o1.outsideID=resp.evaluatee_outsideID
left join eh_outside o2 on o2.outsideID=resp.evaluator_outsideID
where resp.response_status=3
--and ret.Evaluation_Type in (
--	'Faculty evaluation of a student',
--	'Resident evaluation of student',
--	'Student self evaluation')



GO
/****** Object:  Table [dbo].[ref_competencies]    Script Date: 9/1/2020 1:10:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ref_competencies](
	[catID] [int] NOT NULL,
	[programID] [int] NULL,
	[category_title] [varchar](100) NULL,
	[category_description] [text] NULL,
	[category_status] [int] NULL,
	[category_abbrev] [varchar](10) NULL,
	[category_short] [varchar](35) NULL,
	[category_order] [int] NULL,
	[UCSF_init_data_import_datetime] [datetime] NULL,
	[UCSF_last_data_import_datetime] [datetime] NULL,
 CONSTRAINT [PK_ref_competencies] PRIMARY KEY CLUSTERED 
(
	[catID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[eh_evals_items_links]    Script Date: 9/1/2020 1:10:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[eh_evals_items_links](
	[linkID] [int] NOT NULL,
	[itemID] [int] NULL,
	[catID] [int] NULL,
	[milestoneID] [int] NULL,
	[epaID] [int] NULL,
	[objectiveID] [int] NULL,
	[auto_flag] [int] NULL,
	[auto_parent] [int] NULL,
	[achievement_level] [decimal](2, 1) NULL,
	[UCSF_init_data_import_datetime] [datetime] NULL,
	[UCSF_last_data_import_datetime] [datetime] NULL,
 CONSTRAINT [PK_eh_evals_items_links] PRIMARY KEY CLUSTERED 
(
	[linkID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vw_completed_evaluations_competency]    Script Date: 9/1/2020 1:10:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






CREATE view [dbo].[vw_completed_evaluations_competency]
/*
	select * 
	from vw_completed_evaluations_competency
	order by evaluationID,responseID,item_order

tables:
eh_evals
eh_evals_Items
eh_evals_questions_optionsets
eh_responses
users
users_residents
users_students
users_admin
users_finance
users_coordinators
users_gme
users_faculty
eh_responses_answers
eh_evals_questions_optionsets_options
i_clerkships
i_sites
i_programs
admin_students_curriculum_competencies

select question,category_title,category_abbrev,* 
from [dbo].[vw_completed_evaluations_competency] 
where category_title is not null
and student_employeeid='022716468'
and evaluator_userid=68005
order by convert(varchar(200),question)

select * from eh_evals_items where itemID=75020
select * from eh_evals_items_links where itemID=75020
--itemID	catID
--75020	3
select * from admin_students_curriculum_competencies where competencyID=3
--competencyID	competency_name
--3	Practice-based Learning and Improvement
*/
as

select ret.Evaluation_Type_ID,ret.Evaluation_Type,
eval.evaluationID,eval.title as Assessment_title,
evaluatee.userid as student_userid,evaluatee.lastname as student_lastname,evaluatee.firstname as student_firstname,eid_uevaluatee.employeeID as student_employeeID,
evaluator.userid as evaluator_userid,evaluator.lastname as evaluator_lastname,evaluator.firstname as evaluator_firstname,eid_evaluator.employeeID as evaluator_employeeID,
ei.itemID,ei.item_order,ei.question,ei.question_type,
resp.issue_date,resp.completion_date,resp.response_title,resp.rotation_start_date,resp.rotation_end_date,
ans.responseID,ans.textresponse,
eqoo.optionID,eqoo.optionsetID,eqoo.option_value,eqoo.option_heading,eqoo.option_title,eqoo.option_value_scaled,eqoo.option_value_milestones,
cs.clerkshipID,cs.clerkship_name,cs.clerkship_abbrev,cs.clerkship_number,
s.siteID,s.site_name,s.site_shortname,s.site_abbrev,
p.programID,p.programname,p.programabbrev,
c.catID,c.category_title,c.category_abbrev,c.category_order
from eh_evals eval
inner join eh_evals_Items ei on ei.evaluationID=eval.evaluationID
left join eh_evals_questions_optionsets eqo on eqo.optionsetid=ei.question_optionsetid
--inner join eh_evals_questions_optionsets_headers eqoh on eqoh.optionsetid=ei.question_optionsetid
inner join eh_responses resp on resp.evaluationID=eval.evaluationID
inner join users evaluator on evaluator.userid=resp.evaluator_userid
inner join users evaluatee on evaluatee.userid=evaluatee_userid
left join vw_user_employeeID eid_evaluator on eid_evaluator.userid=evaluator.userid --to get evaluator's employee id
left join vw_user_employeeID eid_uevaluatee on eid_uevaluatee.userid=evaluatee.userid --to get student's employee id
inner join tbl_ref_evaluation_type ret on ret.Evaluation_Type_ID_MedHub=resp.eval_type
left join eh_responses_answers ans on ans.responseID=resp.responseID and ans.itemID=ei.itemID
left join eh_evals_questions_optionsets_options eqoo on eqoo.optionID=ans.optionID
left join i_clerkships cs on cs.clerkshipID=resp.clerkshipID
left join i_sites s on s.siteID=cs.primary_siteID
left join i_programs p on p.programID=resp.programID
left join eh_evals_items_links eil on eil.itemID=ei.itemID
left join ref_competencies c on eiL.catID =c.catID
where resp.response_status=3
--and ret.Evaluation_Type in (
--	'Faculty evaluation of a student',
--	'Resident evaluation of student',
--	'Student self evaluation')






GO
/****** Object:  View [dbo].[vw_evaluations]    Script Date: 9/1/2020 1:10:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*where ret.Evaluation_Type in (
	'Faculty evaluation of a student',
	'Resident evaluation of student',
	'Student self evaluation')*/
CREATE VIEW [dbo].[vw_evaluations]
AS
SELECT        ret.Evaluation_Type_ID, ret.Evaluation_Type, eval.evaluationID, eval.title AS Evaluation_title, evaluatee.userID AS student_userid, evaluatee.lastname AS student_lastname, evaluatee.firstname AS student_firstname, 
                         eid_uevaluatee.employeeID AS student_employeeID, evaluator.userID AS evaluator_userid, evaluator.lastname AS evaluator_lastname, evaluator.firstname AS evaluator_firstname, 
                         eid_evaluator.employeeID AS evaluator_employeeID, evaluator.email AS evaluator_email, ei.itemID, ei.item_order, ei.question, ei.question_type, resp.issue_date, resp.completion_date, resp.response_title, 
                         resp.rotation_start_date, resp.rotation_end_date, resp.responseID, REPLACE(REPLACE(CONVERT(varchar(MAX), ans.textresponse), CHAR(10), ''), CHAR(13), '') AS textresponse, eqoo.optionID, eqoo.optionsetID, 
                         eqoo.option_value, eqoo.option_heading, eqoo.option_title, eqoo.option_value_scaled, eqoo.option_value_milestones, cs.clerkshipID, cs.clerkship_name, cs.clerkship_abbrev, cs.clerkship_number, s.siteID, s.site_name, 
                         s.site_shortname, s.site_abbrev, p.programID, p.programname, p.programabbrev, resp.student_enrollmentID, cs.parentID AS clerkship_parentid, resp.response_status
FROM            dbo.eh_evals AS eval LEFT OUTER JOIN
                         dbo.eh_evals_items AS ei ON ei.evaluationID = eval.evaluationID LEFT OUTER JOIN
                         dbo.eh_evals_questions_optionsets AS eqo ON eqo.optionsetID = ei.question_optionsetID INNER JOIN
                         dbo.eh_responses AS resp ON resp.evaluationID = eval.evaluationID INNER JOIN
                         dbo.users AS evaluator ON evaluator.userID = resp.evaluator_userID LEFT OUTER JOIN
                         dbo.users AS evaluatee ON evaluatee.userID = resp.evaluatee_userID LEFT OUTER JOIN
                         dbo.vw_user_employeeID AS eid_evaluator ON eid_evaluator.userid = evaluator.userID LEFT OUTER JOIN
                         dbo.vw_user_employeeID AS eid_uevaluatee ON eid_uevaluatee.userid = evaluatee.userID INNER JOIN
                         dbo.tbl_ref_evaluation_type AS ret ON ret.Evaluation_Type_ID_MedHub = resp.eval_type LEFT OUTER JOIN
                         dbo.eh_responses_answers AS ans ON ans.responseID = resp.responseID AND ans.itemID = ei.itemID LEFT OUTER JOIN
                         dbo.eh_evals_questions_optionsets_options AS eqoo ON eqoo.optionID = ans.optionID LEFT OUTER JOIN
                         dbo.i_clerkships AS cs ON cs.clerkshipID = resp.clerkshipID LEFT OUTER JOIN
                         dbo.i_sites AS s ON s.siteID = cs.primary_siteID LEFT OUTER JOIN
                         dbo.i_programs AS p ON p.programID = resp.programID
GO
/****** Object:  Table [dbo].[i_rotationsets]    Script Date: 9/1/2020 1:10:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[i_rotationsets](
	[rotationsetID] [int] NOT NULL,
	[iID] [int] NULL,
	[rotationset_title] [varchar](50) NULL,
	[date_start] [date] NULL,
	[date_end] [date] NULL,
	[UCSF_init_data_import_datetime] [datetime] NULL,
	[UCSF_last_data_import_datetime] [datetime] NULL,
 CONSTRAINT [PK_i_rotationsets] PRIMARY KEY CLUSTERED 
(
	[rotationsetID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_ref_enrollment_status]    Script Date: 9/1/2020 1:10:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_ref_enrollment_status](
	[enrollment_status] [int] NOT NULL,
	[enrollment_status_descr] [varchar](100) NULL,
	[create_date] [datetime] NULL,
	[create_user] [varchar](50) NULL,
	[modify_date] [datetime] NULL,
	[modify_user] [varchar](50) NULL,
 CONSTRAINT [PK_tbl_ref_enrollment_status] PRIMARY KEY CLUSTERED 
(
	[enrollment_status] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vw_student_enrollment]    Script Date: 9/1/2020 1:10:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE view [dbo].[vw_student_enrollment]
/*
Purpose:
Notes:
Usage:	select * 
		from vw_student_enrollment
		order by lastname,firstname,[start_date],end_date
Revisions:
Date       Developer Name   Purpose
---------- ---------------- -----------------------------------------------------------
7/24/2019  BK				Modified to replace [class_grade] with grade_official
08/01/2019	BK				Added "date_submitted_grade"
09/17/2019  BH				Modified to limit to enrollment status "1" - enrolled
06/09/2020	BK				Added "Active_Student" 

*/

as

SELECT        se.enrollmentID, se.userID, u.lastname, u.firstname, ic.clerkship_name, ic.clerkship_abbrev, se.start_date, se.end_date, gls.grade_official AS class_grade, se.clock_hours, se.termID, se.courseID, 
                         se.class_number, se.class_section, se.enrollment_status, se.grading_basis, se.clerkshipID, se.block_periodID, se.lotteryID, se.waitlist_order, se.enrollment_notes, se.foreignID, se.lock_receipt, 
                         se.created_by_userID, se.grade_released, se.sync_error, se.UCSF_init_data_import_datetime, se.UCSF_last_data_import_datetime, u.email, us.demo_employeeID, rst.term_foreignID, rst.term_name, 
                         rst.start_date AS term_start_date, rst.end_date AS term_end_date, ir.rotationset_title, s.site_name, s.site_shortname, res.enrollment_status_descr, gls.date_submitted AS date_submitted_grade,
						 u.[current] as Active_Student
FROM            users_students_enrollment AS se INNER JOIN
                         users AS u ON u.userID = se.userID INNER JOIN
                         users_students AS us ON us.userID = u.userID INNER JOIN
                         i_clerkships AS ic ON ic.clerkshipID = se.clerkshipID LEFT OUTER JOIN
                         ref_students_terms AS rst ON rst.termID = se.termID LEFT OUTER JOIN
                         i_rotationsets AS ir ON ir.rotationsetID = rst.rotationsetID LEFT OUTER JOIN
                         i_sites AS s ON s.siteID = ic.primary_siteID LEFT OUTER JOIN
                         tbl_ref_enrollment_status AS res ON res.enrollment_status = se.enrollment_status LEFT OUTER JOIN
                         vw_users_students_enrollment_grades_last_submitted AS gls ON gls.enrollmentID = se.enrollmentID
WHERE        (se.enrollment_status = 1)













GO
/****** Object:  UserDefinedFunction [dbo].[fn_Dev_TableFlds]    Script Date: 9/1/2020 1:10:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [dbo].[fn_Dev_TableFlds](@tablename sysname)
RETURNS TABLE
--select * from fn_Dev_TableFlds('tbl_eventpopulation')
AS
RETURN (select fldname=c.column_name,
	datatype=c.data_type,
	colorder=c.ordinal_position,
	length=c.character_maximum_length,
	isnullable=c.is_nullable,
        declaretxt=CASE WHEN c.data_type IN('nvarchar','nchar','varchar','char') THEN '@'+c.column_name+' '+c.data_type+'('+CAST(c.character_maximum_length as varchar(10))+')'
	                   ELSE '@'+c.column_name+' '+c.data_type END
		   +CASE WHEN c.column_name in ('CreateDate','CreateBy','CreateEntid') THEN '=NULL'
			WHEN c.is_nullable='Yes' THEN '=NULL'  ELSE '' END
		   ,
        declaretxtsel=CASE WHEN c.data_type IN('nvarchar','nchar','varchar','char') THEN '@'+c.column_name+' '+c.data_type+'('+CAST(c.character_maximum_length as varchar(10))+')'
	                   ELSE '@'+c.column_name+' '+c.data_type END
		   +'=NULL'
		   ,

	declaretxtIns=CASE WHEN c.data_type IN('nvarchar','nchar','varchar','char') THEN '@'+c.column_name+' '+c.data_type+'('+CAST(c.character_maximum_length as varchar(10))+')'
	                   ELSE '@'+c.column_name+' '+c.data_type END
		   +CASE WHEN  columnproperty(so.id,c.column_name,'IsIdentity')=1 THEN '=NULL OUTPUT'
			WHEN c.column_name in ('CreateDate','CreateBy','CreateEntid') THEN '=NULL'
			WHEN c.is_nullable='Yes' THEN '=NULL'  ELSE '' END
		,
        declaretxtupd=CASE WHEN c.data_type IN('nvarchar','nchar','varchar','char') 
			THEN '@'+c.column_name+' '+c.data_type+'('+CAST(c.character_maximum_length as varchar(10))+')'+ (case when cs.column_name is null then '=''~''' else '' end)
		 WHEN c.data_type IN('text','ntext') THEN '@'+c.column_name+' '+c.data_type+ (case when cs.column_name is null then '=''~''' else '' end)
                 WHEN c.data_type IN('datetime','smalldatetime') THEN  '@'+c.column_name+' '+c.data_type+(case when cs.column_name is null then '=''1901-01-01''' else '' end)
                 WHEN c.data_type IN('bit') THEN  '@'+c.column_name+' '+c.data_type+(case when cs.column_name is null then '=null' else '' end)
                   ELSE '@'+c.column_name+' '+c.data_type+(case when cs.column_name is null then '=-1' else '' end) END ,
	isprimarykey=case when cs.column_name is null then 0 else 1 end,
	isidentity=columnproperty(so.id,c.column_name,'IsIdentity')
	from INFORMATION_SCHEMA.COLUMNS c
	inner join sysobjects so on c.table_name=so.name
	left join 
	(select cc.table_schema,cc.table_name,cc.column_name 
		from INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE cc 
		inner join INFORMATION_SCHEMA.TABLE_CONSTRAINTS tc
		on tc.TABLE_NAME=cc.TABLE_NAME and tc.TABLE_SCHEMA=cc.TABLE_SCHEMA and tc.CONSTRAINT_NAME=cc.CONSTRAINT_NAME  
		where tc.constraint_type ='PRIMARY KEY') cs
	on c.column_name=cs.column_name and c.table_name=cs.table_name  and  c.table_schema=cs.table_schema
	where c.table_name=@tablename 
--and c.TABLE_SCHEMA='dbo'

)

GO
/****** Object:  UserDefinedFunction [dbo].[ufn_sys_TableFlds]    Script Date: 9/1/2020 1:10:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [dbo].[ufn_sys_TableFlds](@schema sysname, @tablename sysname)
RETURNS TABLE
--select * from [ufn_sys_TableFlds]('AppSys','tbl_AppErrorLog')
AS

RETURN 
(SELECT fldname=c.column_name,
		datatype=c.data_type,
		colorder=c.ordinal_position,
		length=c.character_maximum_length,
		isnullable=c.is_nullable,
        declaretxt=CASE WHEN c.data_type IN('nvarchar','nchar','varchar','char') THEN '@'+c.column_name+' '+c.data_type+'('+CAST(c.character_maximum_length as varchar(10))+')'
	                   ELSE '@'+c.column_name+' '+c.data_type END
			      +CASE WHEN c.column_name in ('CreateDate','CreateBy','CreateEntid') THEN '=NULL'
						WHEN c.is_nullable='Yes' THEN '=NULL'  ELSE '' END
		   ,
        declaretxtsel=CASE WHEN c.data_type IN('nvarchar','nchar','varchar','char') THEN '@'+c.column_name+' '+c.data_type+'('+CAST(c.character_maximum_length as varchar(10))+')'
	                   ELSE '@'+c.column_name+' '+c.data_type END
		   +'=NULL'
		   ,
	declaretxtIns=CASE WHEN c.data_type IN('nvarchar','nchar','varchar','char') THEN '@'+c.column_name+' '+c.data_type+'('+CAST(c.character_maximum_length as varchar(10))+')'
	                   ELSE '@'+c.column_name+' '+c.data_type END
		   +CASE WHEN  columnproperty(so.object_id,c.column_name,'IsIdentity')=1 THEN '=NULL OUTPUT'
			WHEN c.column_name in ('CreateDate','CreateBy','CreateEntid') THEN '=NULL'
			WHEN c.is_nullable='Yes' THEN '=NULL'  ELSE '' END
		,
        declaretxtupd=CASE WHEN c.data_type IN('nvarchar','nchar','varchar','char') 
			THEN '@'+c.column_name+' '+c.data_type+'('+CAST(c.character_maximum_length as varchar(10))+')'+ (case when cs.column_name is null then '=''~''' else '' end)
		 WHEN c.data_type IN('text','ntext') THEN '@'+c.column_name+' '+c.data_type+ (case when cs.column_name is null then '=''~''' else '' end)
                 WHEN c.data_type IN('datetime','smalldatetime') THEN  '@'+c.column_name+' '+c.data_type+(case when cs.column_name is null then '=''1901-01-01''' else '' end)
                 WHEN c.data_type IN('bit') THEN  '@'+c.column_name+' '+c.data_type+(case when cs.column_name is null then '=null' else '' end)
                   ELSE '@'+c.column_name+' '+c.data_type+(case when cs.column_name is null then '=-1' else '' end) END ,
		isprimarykey=case when cs.column_name is null then 0 else 1 end,
		isidentity=columnproperty(so.object_id,c.column_name,'IsIdentity')
 FROM INFORMATION_SCHEMA.COLUMNS c
 INNER JOIN sys.tables so ON c.table_name=so.name
 INNER JOIN sys.schemas sm ON sm.schema_id=so.schema_id AND c.Table_Schema=sm.name
 LEFT JOIN  
	(SELECT cc.table_schema,cc.table_name,cc.column_name 
		FROM INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE cc 
		INNER JOIN INFORMATION_SCHEMA.TABLE_CONSTRAINTS tc
		ON tc.TABLE_NAME=cc.TABLE_NAME and tc.TABLE_SCHEMA=cc.TABLE_SCHEMA and tc.CONSTRAINT_NAME=cc.CONSTRAINT_NAME  
		WHERE tc.constraint_type ='PRIMARY KEY') cs
	ON c.column_name=cs.column_name and c.table_name=cs.table_name  and  c.table_schema=cs.table_schema
	WHERE c.table_name=@tablename and c.TABLE_SCHEMA=@schema
)

GO
/****** Object:  Table [appdm].[tbl_Advanced_Core_Skills_20180917]    Script Date: 9/1/2020 1:10:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [appdm].[tbl_Advanced_Core_Skills_20180917](
	[RowNum] [int] NULL,
	[SubCategory] [nvarchar](255) NULL,
	[Department] [nvarchar](255) NULL,
	[Course #] [nvarchar](255) NULL,
	[Course Title] [nvarchar](255) NULL,
	[Site] [nvarchar](255) NULL,
	[Honors ] [nvarchar](255) NULL,
	[Duration] [nvarchar](255) NULL,
	[ElectiveOrAdvancedCore] [nvarchar](255) NULL,
	[DeptCode] [varchar](50) NULL,
	[Tier_MedHub_Adj] [varchar](50) NULL,
	[ClerkshipID] [int] NULL,
	[clerkship_name] [varchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [appdm].[tbl_ClassOf2020_Exception_20180917]    Script Date: 9/1/2020 1:10:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [appdm].[tbl_ClassOf2020_Exception_20180917](
	[RowNum] [int] NULL,
	[Student_Name] [nvarchar](255) NULL,
	[Level] [nvarchar](255) NULL,
	[Grad_Year] [int] NULL,
	[Status] [nvarchar](255) NULL,
	[SAA_ID] [nvarchar](255) NULL,
	[UCSF_ID] [varchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [appdm].[tbl_Elective_Skills_20180917]    Script Date: 9/1/2020 1:10:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [appdm].[tbl_Elective_Skills_20180917](
	[RowNum] [int] NULL,
	[Department] [nvarchar](255) NULL,
	[Course #] [nvarchar](255) NULL,
	[Course Title] [nvarchar](255) NULL,
	[Site] [nvarchar](255) NULL,
	[Honors ] [nvarchar](255) NULL,
	[Duration] [nvarchar](255) NULL,
	[ElectiveOrAdvancedCore] [nvarchar](255) NULL,
	[DeptCode] [varchar](50) NULL,
	[Tier_MedHub_Adj] [varchar](50) NULL,
	[ClerkshipID] [int] NULL,
	[clerkship_name] [varchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [appdm].[tbl_Proposal_20180917]    Script Date: 9/1/2020 1:10:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [appdm].[tbl_Proposal_20180917](
	[RowNum] [int] NULL,
	[clerkship_groupID] [float] NULL,
	[group_abbrev_Bridges] [nvarchar](255) NULL,
	[group_abbrev_trad] [nvarchar](255) NULL,
	[clerkshipID] [float] NULL,
	[clerkship_name] [nvarchar](255) NULL,
	[clerkship_abbrev] [nvarchar](255) NULL,
	[clerkship_hours] [float] NULL,
	[grading_scaleID] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [appdm].[tbl_ref_department]    Script Date: 9/1/2020 1:10:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [appdm].[tbl_ref_department](
	[department] [varchar](100) NULL,
	[deptcode] [varchar](30) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [appsys].[tbl_AppErrorLog]    Script Date: 9/1/2020 1:10:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [appsys].[tbl_AppErrorLog](
	[AppErrId] [int] IDENTITY(1,1) NOT NULL,
	[ErrorDate] [datetime] NULL,
	[ServerName] [varchar](255) NOT NULL,
	[DatabaseName] [varchar](255) NOT NULL,
	[HostName] [varchar](255) NOT NULL,
	[UserName] [varchar](255) NOT NULL,
	[ErrorNumber] [int] NOT NULL,
	[ErrorSeverity] [int] NOT NULL,
	[ErrorState] [int] NOT NULL,
	[ErrorProcedure] [varchar](255) NULL,
	[ErrorLine] [int] NOT NULL,
	[ErrorMessage] [varchar](8000) NULL,
	[RootAppErrid] [int] NULL,
	[ErrorStack] [varchar](8000) NULL,
	[ParentAppErrid] [int] NULL,
	[StackLevel] [int] NULL,
 CONSTRAINT [PK_AppErrorLog] PRIMARY KEY CLUSTERED 
(
	[AppErrId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[eh_auto]    Script Date: 9/1/2020 1:10:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[eh_auto](
	[autoID] [int] NOT NULL,
	[programID] [int] NULL,
	[auto_title] [varchar](50) NULL,
	[date_method] [int] NULL,
	[date_rotation] [int] NULL,
	[date_rotation_days] [int] NULL,
	[date_specific] [varchar](255) NULL,
	[status] [int] NULL,
	[clerkshipID] [int] NULL,
	[expiration_days] [int] NULL,
 CONSTRAINT [PK_eh_auto] PRIMARY KEY CLUSTERED 
(
	[autoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[eh_evals_DelLog]    Script Date: 9/1/2020 1:10:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[eh_evals_DelLog](
	[evaluationID] [int] NOT NULL,
	[iID] [int] NULL,
	[author_programID] [int] NULL,
	[eval_typeA] [varchar](255) NULL,
	[eval_status] [int] NULL,
	[authorID] [int] NULL,
	[creation_date] [date] NULL,
	[modified_date] [date] NULL,
	[title] [varchar](100) NULL,
	[introduction] [text] NULL,
	[public] [int] NULL,
	[setting_descriptions] [int] NULL,
	[eval_active] [int] NULL,
	[file] [varchar](255) NULL,
	[setting_autonumber] [int] NULL,
	[eval_format] [int] NULL,
	[author_clerkshipID] [int] NULL,
	[oppe_type] [int] NULL,
	[share_community] [int] NULL,
	[mobile_friendly] [int] NULL,
	[skip_logic] [int] NULL,
	[allow_student_view] [int] NULL,
	[UCSF_init_data_import_datetime] [datetime] NULL,
	[UCSF_last_data_import_datetime] [datetime] NULL,
	[UCSF_record_deleted_datetime] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[eh_evals_items_DelLog]    Script Date: 9/1/2020 1:10:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[eh_evals_items_DelLog](
	[itemID] [int] NOT NULL,
	[evaluationID] [int] NULL,
	[catID] [int] NULL,
	[item_type] [int] NULL,
	[item_order] [int] NULL,
	[item_status] [int] NULL,
	[question] [text] NULL,
	[question_type] [int] NULL,
	[question_required] [int] NULL,
	[question_optionsetID] [int] NULL,
	[header] [varchar](255) NULL,
	[header_introduction] [text] NULL,
	[descriptors] [int] NULL,
	[question_number] [varchar](15) NULL,
	[alertA] [varchar](255) NULL,
	[question_confidential] [int] NULL,
	[question_right] [text] NULL,
	[commentA] [varchar](255) NULL,
	[locked_itemID] [int] NULL,
	[locked_programID] [int] NULL,
	[locked_clerkshipID] [int] NULL,
	[all_descriptors] [int] NULL,
	[competency_catA] [varchar](30) NULL,
	[skip_display] [int] NULL,
	[skip_itemID] [int] NULL,
	[skip_optionA] [varchar](500) NULL,
	[notify_faculty_program] [int] NULL,
	[notify_resident_program] [int] NULL,
	[UCSF_init_data_import_datetime] [datetime] NULL,
	[UCSF_last_data_import_datetime] [datetime] NULL,
	[UCSF_record_deleted_datetime] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[eh_evals_items_links_DelLog]    Script Date: 9/1/2020 1:10:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[eh_evals_items_links_DelLog](
	[linkID] [int] NOT NULL,
	[itemID] [int] NULL,
	[catID] [int] NULL,
	[milestoneID] [int] NULL,
	[epaID] [int] NULL,
	[objectiveID] [int] NULL,
	[auto_flag] [int] NULL,
	[auto_parent] [int] NULL,
	[achievement_level] [decimal](2, 1) NULL,
	[UCSF_init_data_import_datetime] [datetime] NULL,
	[UCSF_last_data_import_datetime] [datetime] NULL,
	[UCSF_record_deleted_datetime] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[eh_evals_questions_optionsets_DelLog]    Script Date: 9/1/2020 1:10:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[eh_evals_questions_optionsets_DelLog](
	[optionsetID] [int] NOT NULL,
	[programID] [int] NULL,
	[option_type] [int] NULL,
	[optionset_title] [varchar](150) NULL,
	[optionset_options] [int] NULL,
	[optionset_heading] [int] NULL,
	[optionset_exclude] [int] NULL,
	[optionset_milestones] [int] NULL,
	[optionset_hide] [int] NULL,
	[author_userID] [int] NULL,
	[mobile_friendly] [int] NULL,
	[UCSF_init_data_import_datetime] [datetime] NULL,
	[UCSF_last_data_import_datetime] [datetime] NULL,
	[UCSF_record_deleted_datetime] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[eh_evals_questions_optionsets_options_DelLog]    Script Date: 9/1/2020 1:10:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[eh_evals_questions_optionsets_options_DelLog](
	[optionID] [int] NOT NULL,
	[optionsetID] [int] NULL,
	[option_value] [decimal](18, 1) NULL,
	[option_heading] [varchar](100) NULL,
	[option_title] [varchar](300) NULL,
	[option_order] [int] NULL,
	[option_bgcolor] [varchar](10) NULL,
	[option_value_scaled] [decimal](3, 1) NULL,
	[option_value_milestones] [decimal](3, 1) NULL,
	[UCSF_init_data_import_datetime] [datetime] NULL,
	[UCSF_last_data_import_datetime] [datetime] NULL,
	[UCSF_record_deleted_datetime] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[eh_evals_UpdLog]    Script Date: 9/1/2020 1:10:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[eh_evals_UpdLog](
	[evaluationID] [int] NOT NULL,
	[iID] [int] NULL,
	[author_programID] [int] NULL,
	[eval_typeA] [varchar](255) NULL,
	[eval_status] [int] NULL,
	[authorID] [int] NULL,
	[creation_date] [date] NULL,
	[modified_date] [date] NULL,
	[title] [varchar](100) NULL,
	[introduction] [text] NULL,
	[public] [int] NULL,
	[setting_descriptions] [int] NULL,
	[eval_active] [int] NULL,
	[file] [varchar](255) NULL,
	[setting_autonumber] [int] NULL,
	[eval_format] [int] NULL,
	[author_clerkshipID] [int] NULL,
	[oppe_type] [int] NULL,
	[share_community] [int] NULL,
	[mobile_friendly] [int] NULL,
	[skip_logic] [int] NULL,
	[allow_student_view] [int] NULL,
	[UCSF_init_data_import_datetime] [datetime] NULL,
	[UCSF_last_data_import_datetime] [datetime] NULL,
	[UCSF_record_backup_datetime] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[eh_outside_clerkships]    Script Date: 9/1/2020 1:10:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[eh_outside_clerkships](
	[outside_clerkshipID] [int] NOT NULL,
	[outsideID] [int] NULL,
	[weekdayA] [varchar](15) NULL,
	[clerkshipID] [int] NULL,
	[setting_conferences] [int] NULL,
	[UCSF_init_data_import_datetime] [datetime] NULL,
	[UCSF_last_data_import_datetime] [datetime] NULL,
 CONSTRAINT [PK_eh_outside_clerkships] PRIMARY KEY CLUSTERED 
(
	[outside_clerkshipID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[eh_outside_programs]    Script Date: 9/1/2020 1:10:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[eh_outside_programs](
	[outside_programID] [int] NOT NULL,
	[outsideID] [int] NULL,
	[programID] [int] NULL,
	[setting_conferences] [int] NULL,
	[UCSF_init_data_import_datetime] [datetime] NULL,
	[UCSF_last_data_import_datetime] [datetime] NULL,
 CONSTRAINT [PK_eh_outside_programs] PRIMARY KEY CLUSTERED 
(
	[outside_programID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[eh_outside_services]    Script Date: 9/1/2020 1:10:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[eh_outside_services](
	[refID] [int] NOT NULL,
	[outsideID] [int] NULL,
	[programID] [int] NULL,
	[globalserviceID] [int] NULL,
	[service_refID] [int] NULL,
	[clinicnameID] [int] NULL,
	[UCSF_init_data_import_datetime] [datetime] NULL,
	[UCSF_last_data_import_datetime] [datetime] NULL,
 CONSTRAINT [PK_eh_outside_services] PRIMARY KEY CLUSTERED 
(
	[refID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[eh_responses_answers_deleted_duplicate]    Script Date: 9/1/2020 1:10:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[eh_responses_answers_deleted_duplicate](
	[answerID] [int] NOT NULL,
	[responseID] [int] NULL,
	[itemID] [int] NULL,
	[optionID] [int] NULL,
	[textresponse] [text] NULL,
	[flag_alert] [int] NULL,
	[UCSF_init_data_import_datetime] [datetime] NULL,
	[UCSF_last_data_import_datetime] [datetime] NULL,
	[UCSF_init_data_delete_datetime] [datetime] NOT NULL,
 CONSTRAINT [PK_eh_responses_answers_deleted_duplicate] PRIMARY KEY CLUSTERED 
(
	[answerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[eh_responses_answers_DelLog]    Script Date: 9/1/2020 1:10:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[eh_responses_answers_DelLog](
	[answerID] [int] NOT NULL,
	[responseID] [int] NULL,
	[itemID] [int] NULL,
	[optionID] [int] NULL,
	[textresponse] [text] NULL,
	[flag_alert] [int] NULL,
	[UCSF_init_data_import_datetime] [datetime] NULL,
	[UCSF_last_data_import_datetime] [datetime] NULL,
	[UCSF_record_deleted_datetime] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[eh_responses_answers_UpdLog]    Script Date: 9/1/2020 1:10:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[eh_responses_answers_UpdLog](
	[answerID] [int] NOT NULL,
	[responseID] [int] NULL,
	[itemID] [int] NULL,
	[optionID] [int] NULL,
	[textresponse] [text] NULL,
	[flag_alert] [int] NULL,
	[UCSF_init_data_import_datetime] [datetime] NULL,
	[UCSF_last_data_import_datetime] [datetime] NULL,
	[UCSF_record_backup_datetime] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[eh_responses_DelLog]    Script Date: 9/1/2020 1:10:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[eh_responses_DelLog](
	[responseID] [int] NOT NULL,
	[evaluationID] [int] NULL,
	[auto_evaluationID] [int] NULL,
	[rotationID] [int] NULL,
	[globalserviceID] [int] NULL,
	[response_status] [int] NULL,
	[evaluator_userID] [int] NULL,
	[issue_date] [date] NULL,
	[completion_date] [date] NULL,
	[response_title] [varchar](150) NULL,
	[evaluatee_other] [varchar](100) NULL,
	[programID] [int] NULL,
	[response_notes] [varchar](255) NULL,
	[eval_type] [int] NULL,
	[flag_alert] [int] NULL,
	[evaluatee_userID] [int] NULL,
	[evaluatee_outsideID] [int] NULL,
	[evaluator_outsideID] [int] NULL,
	[evaluator_other] [varchar](100) NULL,
	[lectureID] [int] NULL,
	[procedureID] [int] NULL,
	[reviewed_date] [date] NULL,
	[special_type] [int] NULL,
	[special_signature] [varchar](25) NULL,
	[flag_printed] [int] NULL,
	[clinicnameID] [int] NULL,
	[flag_tiered] [int] NULL,
	[leader_responseA] [varchar](100) NULL,
	[special_force] [int] NULL,
	[resent_date] [date] NULL,
	[program_notes] [varchar](1000) NULL,
	[portfolio_entryID] [int] NULL,
	[autoID] [int] NULL,
	[rotation_start_date] [date] NULL,
	[rotation_end_date] [date] NULL,
	[flag_released] [int] NULL,
	[risID] [int] NULL,
	[clerkshipID] [int] NULL,
	[student_enrollmentID] [int] NULL,
	[student_flag_changed] [int] NULL,
	[oppeID] [int] NULL,
	[deliveredby_userID] [int] NULL,
	[oppe_faculty_serviceID] [int] NULL,
	[sessionID] [int] NULL,
	[mobile] [int] NULL,
	[submission_source] [int] NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
	[expiration_date] [date] NULL,
	[return_datetime] [datetime] NULL,
	[return_reason] [text] NULL,
	[evaluatee_notified] [int] NULL,
	[UCSF_init_data_import_datetime] [datetime] NULL,
	[UCSF_last_data_import_datetime] [datetime] NULL,
	[UCSF_record_deleted_datetime] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[eh_responses_UpdLog]    Script Date: 9/1/2020 1:10:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[eh_responses_UpdLog](
	[responseID] [int] NOT NULL,
	[evaluationID] [int] NULL,
	[auto_evaluationID] [int] NULL,
	[rotationID] [int] NULL,
	[globalserviceID] [int] NULL,
	[response_status] [int] NULL,
	[evaluator_userID] [int] NULL,
	[issue_date] [date] NULL,
	[completion_date] [date] NULL,
	[response_title] [varchar](150) NULL,
	[evaluatee_other] [varchar](100) NULL,
	[programID] [int] NULL,
	[response_notes] [varchar](255) NULL,
	[eval_type] [int] NULL,
	[flag_alert] [int] NULL,
	[evaluatee_userID] [int] NULL,
	[evaluatee_outsideID] [int] NULL,
	[evaluator_outsideID] [int] NULL,
	[evaluator_other] [varchar](100) NULL,
	[lectureID] [int] NULL,
	[procedureID] [int] NULL,
	[reviewed_date] [date] NULL,
	[special_type] [int] NULL,
	[special_signature] [varchar](25) NULL,
	[flag_printed] [int] NULL,
	[clinicnameID] [int] NULL,
	[flag_tiered] [int] NULL,
	[leader_responseA] [varchar](100) NULL,
	[special_force] [int] NULL,
	[resent_date] [date] NULL,
	[program_notes] [varchar](1000) NULL,
	[portfolio_entryID] [int] NULL,
	[autoID] [int] NULL,
	[rotation_start_date] [date] NULL,
	[rotation_end_date] [date] NULL,
	[flag_released] [int] NULL,
	[risID] [int] NULL,
	[clerkshipID] [int] NULL,
	[student_enrollmentID] [int] NULL,
	[student_flag_changed] [int] NULL,
	[oppeID] [int] NULL,
	[deliveredby_userID] [int] NULL,
	[oppe_faculty_serviceID] [int] NULL,
	[sessionID] [int] NULL,
	[mobile] [int] NULL,
	[submission_source] [int] NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
	[expiration_date] [date] NULL,
	[return_datetime] [datetime] NULL,
	[return_reason] [text] NULL,
	[evaluatee_notified] [int] NULL,
	[UCSF_init_data_import_datetime] [datetime] NULL,
	[UCSF_last_data_import_datetime] [datetime] NULL,
	[UCSF_record_backup_datetime] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[i_clerkships_dates]    Script Date: 9/1/2020 1:10:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[i_clerkships_dates](
	[dateID] [int] NULL,
	[clerkshipID] [int] NOT NULL,
	[block_periodID] [int] NOT NULL,
	[students_min] [int] NULL,
	[students_max] [int] NULL,
	[waitlist] [int] NULL,
	[date_status] [int] NULL,
	[reference] [varchar](64) NULL,
	[foreignID] [int] NULL,
	[UCSF_init_data_import_datetime] [datetime] NULL,
	[UCSF_last_data_import_datetime] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pc_lists_locations]    Script Date: 9/1/2020 1:10:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pc_lists_locations](
	[locationID] [int] NOT NULL,
	[programID] [int] NULL,
	[location] [varchar](100) NULL,
	[status] [int] NULL,
	[acgme_institutionID] [int] NULL,
	[clerkshipID] [int] NULL,
	[UCSF_init_data_import_datetime] [datetime] NULL,
	[UCSF_last_data_import_datetime] [datetime] NULL,
 CONSTRAINT [PK_pc_lists_locations] PRIMARY KEY CLUSTERED 
(
	[locationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pc_lists_procedures]    Script Date: 9/1/2020 1:10:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pc_lists_procedures](
	[typeID] [int] NOT NULL,
	[programID] [int] NULL,
	[type_title] [varchar](255) NULL,
	[cpt_code] [varchar](10) NULL,
	[certification_min] [int] NULL,
	[evaluationID] [int] NULL,
	[always_evaluate] [int] NULL,
	[type_status] [int] NULL,
	[verify] [int] NULL,
	[certification_verified] [int] NULL,
	[other_code] [varchar](10) NULL,
	[acgme_typeA] [varchar](255) NULL,
	[clerkshipID] [int] NULL,
	[certify_disable] [int] NULL,
	[parent_typeID] [int] NULL,
	[gme_typeID] [int] NULL,
	[UCSF_init_data_import_datetime] [datetime] NULL,
	[UCSF_last_data_import_datetime] [datetime] NULL,
 CONSTRAINT [PK_pc_lists_procedures] PRIMARY KEY CLUSTERED 
(
	[typeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pc_lists_roles]    Script Date: 9/1/2020 1:10:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pc_lists_roles](
	[roleID] [int] NOT NULL,
	[role_name] [varchar](20) NULL,
	[role_type] [int] NULL,
	[role_status] [int] NULL,
	[iID] [int] NULL,
	[schoolID] [int] NULL,
	[flag_ale] [int] NULL,
	[UCSF_init_data_import_datetime] [datetime] NULL,
	[UCSF_last_data_import_datetime] [datetime] NULL,
 CONSTRAINT [PK_pc_lists_roles_1] PRIMARY KEY CLUSTERED 
(
	[roleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pc_logs]    Script Date: 9/1/2020 1:10:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pc_logs](
	[logID] [int] NOT NULL,
	[userID] [int] NULL,
	[locationID] [int] NULL,
	[location_other] [varchar](100) NULL,
	[procedure_date] [date] NULL,
	[procedure_date_end] [date] NULL,
	[procedure_visit] [int] NULL,
	[supervisorID] [int] NULL,
	[supervisor_other] [varchar](100) NULL,
	[patientID] [varchar](25) NULL,
	[patient_gender] [char](1) NULL,
	[patient_age] [int] NULL,
	[complications] [varchar](255) NULL,
	[notes] [text] NULL,
	[custom_fieldA] [text] NULL,
	[record_date] [date] NULL,
	[clinicnameID] [int] NULL,
	[acgme_procedureID] [int] NULL,
	[clerkshipID] [int] NULL,
	[summary] [text] NULL,
	[student_confirmation_status] [int] NULL,
	[student_confirmation_notes] [text] NULL,
	[batch_flag] [int] NULL,
	[typeID] [int] NULL,
	[mobile] [int] NULL,
	[UCSF_init_data_import_datetime] [datetime] NULL,
	[UCSF_last_data_import_datetime] [datetime] NULL,
 CONSTRAINT [PK_pc_logs] PRIMARY KEY CLUSTERED 
(
	[logID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pc_logs_diagnosis]    Script Date: 9/1/2020 1:10:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pc_logs_diagnosis](
	[diagnosisID] [int] NOT NULL,
	[logID] [int] NULL,
	[diagnosis_typeID] [int] NULL,
	[diagnosis_other] [varchar](150) NULL,
	[diagnosis_quantity] [int] NULL,
	[row] [int] NULL,
	[userID] [int] NULL,
	[role] [int] NULL,
	[UCSF_init_data_import_datetime] [datetime] NULL,
	[UCSF_last_data_import_datetime] [datetime] NULL,
 CONSTRAINT [PK_pc_logs_diagnosis] PRIMARY KEY CLUSTERED 
(
	[diagnosisID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pc_logs_procedures]    Script Date: 9/1/2020 1:10:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pc_logs_procedures](
	[procedureID] [int] NOT NULL,
	[logID] [int] NULL,
	[procedure_typeID] [int] NULL,
	[procedure_other] [varchar](150) NULL,
	[procedure_quantity] [int] NULL,
	[role] [int] NULL,
	[supervisor_evaluate] [int] NULL,
	[confirmation_status] [int] NULL,
	[confirmation_notes] [text] NULL,
	[row] [int] NULL,
	[userID] [int] NULL,
	[UCSF_init_data_import_datetime] [datetime] NULL,
	[UCSF_last_data_import_datetime] [datetime] NULL,
 CONSTRAINT [PK_pc_logs_procedures] PRIMARY KEY CLUSTERED 
(
	[procedureID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pc_requirements]    Script Date: 9/1/2020 1:10:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pc_requirements](
	[requirementID] [int] NOT NULL,
	[type] [int] NULL,
	[programID] [int] NULL,
	[clerkshipID] [int] NULL,
	[levelA] [varchar](30) NULL,
	[label] [varchar](50) NULL,
	[sort_order] [int] NULL,
	[total_qty] [int] NULL,
	[flag_all] [int] NULL,
	[UCSF_init_data_import_datetime] [datetime] NULL,
	[UCSF_last_data_import_datetime] [datetime] NULL,
 CONSTRAINT [PK_pc_requirements_1] PRIMARY KEY CLUSTERED 
(
	[requirementID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pc_requirements_items]    Script Date: 9/1/2020 1:10:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pc_requirements_items](
	[itemID] [int] NOT NULL,
	[requirementID] [int] NULL,
	[procedure_typeID] [int] NULL,
	[diagnosis_typeID] [int] NULL,
	[UCSF_init_data_import_datetime] [datetime] NULL,
	[UCSF_last_data_import_datetime] [datetime] NULL,
 CONSTRAINT [PK_pc_requirements_items] PRIMARY KEY CLUSTERED 
(
	[itemID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pc_requirements_roles]    Script Date: 9/1/2020 1:10:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pc_requirements_roles](
	[requirement_roleID] [int] NOT NULL,
	[requirementID] [int] NULL,
	[roleA] [varchar](30) NULL,
	[qty] [int] NULL,
	[UCSF_init_data_import_datetime] [datetime] NULL,
	[UCSF_last_data_import_datetime] [datetime] NULL,
 CONSTRAINT [PK_pc_requirements_roles] PRIMARY KEY CLUSTERED 
(
	[requirement_roleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ref_audit_types]    Script Date: 9/1/2020 1:10:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ref_audit_types](
	[audit_typeID] [int] NOT NULL,
	[type_name] [varchar](50) NULL,
	[reporting_access] [varchar](15) NULL,
	[reporting_program_required] [int] NULL,
	[user_types] [varchar](50) NULL,
	[target_field] [varchar](20) NULL,
	[target_description] [varchar](20) NULL,
	[audit_notes] [varchar](50) NULL,
	[target_class] [text] NULL,
	[audit_md5] [char](32) NULL,
	[UCSF_init_data_import_datetime] [datetime] NULL,
	[UCSF_last_data_import_datetime] [datetime] NULL,
 CONSTRAINT [PK_ref_audit_types] PRIMARY KEY CLUSTERED 
(
	[audit_typeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ref_residents_types]    Script Date: 9/1/2020 1:10:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ref_residents_types](
	[typeID] [int] NOT NULL,
	[type_name] [varchar](50) NULL,
	[setting_access] [int] NULL,
	[setting_contracts] [int] NULL,
	[setting_iris] [int] NULL,
	[type_default] [int] NULL,
	[type_order] [int] NULL,
	[visiting_flag] [int] NULL,
	[status] [int] NULL,
	[schedule_order] [int] NULL,
	[type_suffix] [varchar](5) NULL,
	[type_color] [varchar](7) NULL,
	[setting_schedules] [int] NULL,
	[setting_slots] [int] NULL,
	[type_jobcode] [varchar](30) NULL,
	[setting_billing] [int] NULL,
	[setting_dutyhours] [int] NULL,
	[costreportID] [int] NULL,
	[UCSF_init_data_import_datetime] [datetime] NULL,
	[UCSF_last_data_import_datetime] [datetime] NULL,
 CONSTRAINT [PK_ref_residents_types] PRIMARY KEY CLUSTERED 
(
	[typeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ref_students_grading_scales]    Script Date: 9/1/2020 1:10:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ref_students_grading_scales](
	[scaleID] [int] NOT NULL,
	[scale_name] [varchar](50) NULL,
	[status] [int] NULL,
	[scale_default] [int] NULL,
	[schoolID] [int] NULL,
	[gradebookFlag] [int] NULL,
	[numericFlag] [int] NULL,
	[UCSF_init_data_import_datetime] [datetime] NULL,
	[UCSF_last_data_import_datetime] [datetime] NULL,
 CONSTRAINT [PK_ref_students_grading_scales] PRIMARY KEY CLUSTERED 
(
	[scaleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ref_students_services]    Script Date: 9/1/2020 1:10:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ref_students_services](
	[refID] [int] NOT NULL,
	[deptID] [int] NULL,
	[globalserviceID] [int] NULL,
	[servicename] [varchar](50) NULL,
	[serviceabbrev] [varchar](15) NULL,
	[status] [int] NULL,
	[evaluation_number] [int] NULL,
	[clerkshipID] [int] NULL,
	[primary_siteA] [varchar](255) NULL,
	[evaluations_ris] [int] NULL,
	[evaluations_ris_required] [int] NULL,
	[evaluations_ris_recommended] [int] NULL,
	[evaluations_ris_programA] [varchar](255) NULL,
	[evaluations_ris_sof_evaluationID] [int] NULL,
	[evaluations_ris_sor_evaluationID] [int] NULL,
	[evaluations_ris_ros_evaluationID] [int] NULL,
	[evaluations_ris_fos_evaluationID] [int] NULL,
	[evaluations_ris_sof_anonymous] [int] NULL,
	[evaluations_ris_sor_anonymous] [int] NULL,
	[evaluations_ris_ros_anonymous] [int] NULL,
	[evaluations_ris_fos_anonymous] [int] NULL,
	[service_type] [int] NULL,
	[resident_interact] [int] NULL,
	[UCSF_init_data_import_datetime] [datetime] NULL,
	[UCSF_last_data_import_datetime] [datetime] NULL,
 CONSTRAINT [PK_ref_students_services] PRIMARY KEY CLUSTERED 
(
	[refID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[stats_audit]    Script Date: 9/1/2020 1:10:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[stats_audit](
	[auditID] [int] NOT NULL,
	[userID] [int] NULL,
	[audit_typeID] [int] NULL,
	[targetID] [int] NULL,
	[date_time] [datetime] NOT NULL,
	[notes] [varchar](255) NULL,
	[UCSF_init_data_import_datetime] [datetime] NULL,
	[UCSF_last_data_import_datetime] [datetime] NULL,
 CONSTRAINT [PK_stats_audit] PRIMARY KEY CLUSTERED 
(
	[auditID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_ref_clerkship_tier_mapping]    Script Date: 9/1/2020 1:10:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_ref_clerkship_tier_mapping](
	[clerkshipID] [int] NOT NULL,
	[clerkship_name] [varchar](100) NULL,
	[clerkship_status] [int] NULL,
	[group_abbrev] [varchar](15) NULL,
	[department] [varchar](200) NULL,
	[department_code] [varchar](20) NULL,
	[course_number] [varchar](20) NULL,
	[Tier_Bridges] [varchar](50) NULL,
	[Tier_Bridges_Adj] [varchar](50) NULL,
	[Tier_Traditional] [varchar](50) NULL,
	[create_date] [datetime] NULL,
	[create_user] [varchar](50) NULL,
	[modify_date] [datetime] NULL,
	[modify_user] [varchar](50) NULL,
 CONSTRAINT [PK_tbl_ref_clerkship_Tier] PRIMARY KEY CLUSTERED 
(
	[clerkshipID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_ref_confirmation_status]    Script Date: 9/1/2020 1:10:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_ref_confirmation_status](
	[confirmation_status] [int] NOT NULL,
	[confirmation_status_short_name] [varchar](20) NULL,
	[confirmation_status_long_name] [varchar](100) NULL,
	[confirmation_status_description] [varchar](max) NULL,
	[create_date] [datetime] NULL,
	[create_user] [varchar](50) NULL,
	[modify_date] [datetime] NULL,
	[modify_user] [varchar](50) NULL,
 CONSTRAINT [PK_tbl_ref_confirmation_status] PRIMARY KEY CLUSTERED 
(
	[confirmation_status] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_ref_eval_type]    Script Date: 9/1/2020 1:10:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_ref_eval_type](
	[eval_type] [int] NOT NULL,
	[eval_type_descr] [varchar](100) NULL,
	[create_date] [datetime] NULL,
	[create_user] [varchar](50) NULL,
	[modify_date] [datetime] NULL,
	[modify_user] [varchar](50) NULL,
 CONSTRAINT [PK_tbl_ref_eval_type] PRIMARY KEY CLUSTERED 
(
	[eval_type] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_ref_option_type]    Script Date: 9/1/2020 1:10:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_ref_option_type](
	[option_type] [int] NOT NULL,
	[option_type_descr] [varchar](100) NULL,
	[create_date] [datetime] NULL,
	[create_user] [varchar](50) NULL,
	[modify_date] [datetime] NULL,
	[modify_user] [varchar](50) NULL,
 CONSTRAINT [PK_tbl_ref_option_type] PRIMARY KEY CLUSTERED 
(
	[option_type] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_ref_question_type]    Script Date: 9/1/2020 1:10:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_ref_question_type](
	[question_type] [int] NOT NULL,
	[question_type_descr] [varchar](100) NULL,
	[create_date] [datetime] NULL,
	[create_user] [varchar](50) NULL,
	[modify_date] [datetime] NULL,
	[modify_user] [varchar](50) NULL,
 CONSTRAINT [PK_tbl_ref_question_type] PRIMARY KEY CLUSTERED 
(
	[question_type] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_ref_response_status]    Script Date: 9/1/2020 1:10:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_ref_response_status](
	[response_status] [int] NOT NULL,
	[response_status_descr] [varchar](100) NULL,
	[create_date] [datetime] NULL,
	[create_user] [varchar](50) NULL,
	[modify_date] [datetime] NULL,
	[modify_user] [varchar](50) NULL,
 CONSTRAINT [PK_tbl_ref_response_status] PRIMARY KEY CLUSTERED 
(
	[response_status] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_ref_usertype]    Script Date: 9/1/2020 1:10:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_ref_usertype](
	[usertype] [int] NOT NULL,
	[usertype_descr] [varchar](100) NULL,
	[create_date] [datetime] NULL,
	[create_user] [varchar](50) NULL,
	[modify_date] [datetime] NULL,
	[modify_user] [varchar](50) NULL,
 CONSTRAINT [PK_tbl_ref_usertype] PRIMARY KEY CLUSTERED 
(
	[usertype] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users_faculty_clerkships]    Script Date: 9/1/2020 1:10:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users_faculty_clerkships](
	[refID] [int] NOT NULL,
	[userID] [int] NULL,
	[clerkshipID] [int] NULL,
	[defaultclerkship] [int] NULL,
	[access_reports] [int] NULL,
	[access_reportsA] [varchar](255) NULL,
	[UCSF_init_data_import_datetime] [datetime] NULL,
	[UCSF_last_data_import_datetime] [datetime] NULL,
 CONSTRAINT [PK_users_faculty_clerkships] PRIMARY KEY CLUSTERED 
(
	[refID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users_faculty_programs]    Script Date: 9/1/2020 1:10:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users_faculty_programs](
	[refID] [int] NOT NULL,
	[defaultprogram] [int] NULL,
	[programID] [int] NULL,
	[userID] [int] NULL,
	[teaching] [int] NULL,
	[acgme_attendingID] [int] NULL,
	[access_reports] [int] NULL,
	[access_reportsA] [varchar](60) NULL,
	[UCSF_init_data_import_datetime] [datetime] NULL,
	[UCSF_last_data_import_datetime] [datetime] NULL,
 CONSTRAINT [PK_users_faculty_programs] PRIMARY KEY CLUSTERED 
(
	[refID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users_residents_pg]    Script Date: 9/1/2020 1:10:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users_residents_pg](
	[pgID] [int] NOT NULL,
	[userID] [int] NULL,
	[pg_start_date] [date] NULL,
	[pg_end_date] [date] NULL,
	[pg_type] [int] NULL,
	[typeID] [int] NULL,
	[hospitalID] [int] NULL,
	[pg_location] [int] NULL,
	[pg_location_other] [varchar](150) NULL,
	[pg_location_address] [varchar](100) NULL,
	[pg_specialty] [varchar](255) NULL,
	[special_internship_typ] [int] NULL,
	[special_military_gib] [int] NULL,
	[special_irp] [int] NULL,
	[special_bc] [int] NULL,
	[special_termination] [int] NULL,
	[payerID] [int] NULL,
	[contract_approved] [int] NULL,
	[contract_rateID] [int] NULL,
	[contract_rate_other] [decimal](10, 2) NULL,
	[contract_formID] [int] NULL,
	[contract_date] [date] NULL,
	[contract_received] [date] NULL,
	[contract_comments] [varchar](100) NULL,
	[moonlighting_flag] [int] NULL,
	[moonlighting_location] [varchar](100) NULL,
	[moonlighting_hours] [int] NULL,
	[funding_ccfnd] [varchar](10) NULL,
	[funding_fnd] [varchar](20) NULL,
	[status_refID] [int] NULL,
	[pg_nonacgme] [int] NULL,
	[pg_comments] [text] NULL,
	[cc_appt_typeID] [int] NULL,
	[cc_change_typeID] [int] NULL,
	[cc_salary] [int] NULL,
	[cc_benefits] [int] NULL,
	[billtoID] [int] NULL,
	[pta_number] [varchar](255) NULL,
	[moonlighting_type] [int] NULL,
	[contract_sign_resident] [varchar](50) NULL,
	[contract_sign_resident_date] [date] NULL,
	[contract_sign_director] [varchar](50) NULL,
	[contract_sign_director_date] [date] NULL,
	[contract_sign_logA] [varchar](150) NULL,
	[fileID] [int] NULL,
	[mayo_job_code] [varchar](10) NULL,
	[mayo_payroll_benefits] [int] NULL,
	[weight_override] [int] NULL,
	[UCSF_init_data_import_datetime] [datetime] NULL,
	[UCSF_last_data_import_datetime] [datetime] NULL,
 CONSTRAINT [PK_users_residents_pg] PRIMARY KEY CLUSTERED 
(
	[pgID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users_students_enrollment_DelLog]    Script Date: 9/1/2020 1:10:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users_students_enrollment_DelLog](
	[enrollmentID] [int] NOT NULL,
	[userID] [int] NULL,
	[termID] [int] NULL,
	[courseID] [int] NULL,
	[class_number] [varchar](10) NULL,
	[class_section] [varchar](5) NULL,
	[enrollment_status] [int] NULL,
	[grading_basis] [varchar](10) NULL,
	[clock_hours] [decimal](6, 1) NULL,
	[class_grade] [varchar](5) NULL,
	[start_date] [date] NULL,
	[end_date] [date] NULL,
	[clerkshipID] [int] NULL,
	[block_periodID] [int] NULL,
	[lotteryID] [int] NULL,
	[waitlist_order] [int] NULL,
	[enrollment_notes] [varchar](512) NULL,
	[foreignID] [int] NULL,
	[lock_receipt] [varchar](12) NULL,
	[created_by_userID] [int] NULL,
	[grade_released] [datetime] NULL,
	[sync_error] [int] NULL,
	[UCSF_init_data_import_datetime] [datetime] NULL,
	[UCSF_last_data_import_datetime] [datetime] NULL,
	[UCSF_record_deleted_datetime] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users_students_enrollment_UpdLog]    Script Date: 9/1/2020 1:10:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users_students_enrollment_UpdLog](
	[enrollmentID] [int] NOT NULL,
	[userID] [int] NULL,
	[termID] [int] NULL,
	[courseID] [int] NULL,
	[class_number] [varchar](10) NULL,
	[class_section] [varchar](5) NULL,
	[enrollment_status] [int] NULL,
	[grading_basis] [varchar](10) NULL,
	[clock_hours] [decimal](6, 1) NULL,
	[class_grade] [varchar](5) NULL,
	[start_date] [date] NULL,
	[end_date] [date] NULL,
	[clerkshipID] [int] NULL,
	[block_periodID] [int] NULL,
	[lotteryID] [int] NULL,
	[waitlist_order] [int] NULL,
	[enrollment_notes] [varchar](512) NULL,
	[foreignID] [int] NULL,
	[lock_receipt] [varchar](12) NULL,
	[created_by_userID] [int] NULL,
	[grade_released] [datetime] NULL,
	[sync_error] [int] NULL,
	[UCSF_init_data_import_datetime] [datetime] NULL,
	[UCSF_last_data_import_datetime] [datetime] NULL,
	[UCSF_record_backup_datetime] [datetime] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_eh_evals]    Script Date: 9/1/2020 1:10:57 PM ******/
CREATE NONCLUSTERED INDEX [IX_eh_evals] ON [dbo].[eh_evals]
(
	[eval_typeA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_eh_evals_1]    Script Date: 9/1/2020 1:10:57 PM ******/
CREATE NONCLUSTERED INDEX [IX_eh_evals_1] ON [dbo].[eh_evals]
(
	[eval_status] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_eh_evals_2]    Script Date: 9/1/2020 1:10:57 PM ******/
CREATE NONCLUSTERED INDEX [IX_eh_evals_2] ON [dbo].[eh_evals]
(
	[eval_active] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_eh_evals_items]    Script Date: 9/1/2020 1:10:57 PM ******/
CREATE NONCLUSTERED INDEX [IX_eh_evals_items] ON [dbo].[eh_evals_items]
(
	[evaluationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_eh_evals_items_links]    Script Date: 9/1/2020 1:10:57 PM ******/
CREATE NONCLUSTERED INDEX [IX_eh_evals_items_links] ON [dbo].[eh_evals_items_links]
(
	[milestoneID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_eh_evals_items_links_1]    Script Date: 9/1/2020 1:10:57 PM ******/
CREATE NONCLUSTERED INDEX [IX_eh_evals_items_links_1] ON [dbo].[eh_evals_items_links]
(
	[objectiveID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_eh_evals_items_links_2]    Script Date: 9/1/2020 1:10:57 PM ******/
CREATE NONCLUSTERED INDEX [IX_eh_evals_items_links_2] ON [dbo].[eh_evals_items_links]
(
	[itemID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_eh_evals_questions_optionsets_1]    Script Date: 9/1/2020 1:10:57 PM ******/
CREATE NONCLUSTERED INDEX [IX_eh_evals_questions_optionsets_1] ON [dbo].[eh_evals_questions_optionsets]
(
	[programID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_eh_evals_questions_optionsets_options_1]    Script Date: 9/1/2020 1:10:57 PM ******/
CREATE NONCLUSTERED INDEX [IX_eh_evals_questions_optionsets_options_1] ON [dbo].[eh_evals_questions_optionsets_options]
(
	[optionsetID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_eh_evals_questions_optionsets_options_2]    Script Date: 9/1/2020 1:10:57 PM ******/
CREATE NONCLUSTERED INDEX [IX_eh_evals_questions_optionsets_options_2] ON [dbo].[eh_evals_questions_optionsets_options]
(
	[option_value_milestones] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_eh_responses]    Script Date: 9/1/2020 1:10:57 PM ******/
CREATE NONCLUSTERED INDEX [IX_eh_responses] ON [dbo].[eh_responses]
(
	[evaluator_userID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_eh_responses_1]    Script Date: 9/1/2020 1:10:57 PM ******/
CREATE NONCLUSTERED INDEX [IX_eh_responses_1] ON [dbo].[eh_responses]
(
	[evaluationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_eh_responses_2]    Script Date: 9/1/2020 1:10:57 PM ******/
CREATE NONCLUSTERED INDEX [IX_eh_responses_2] ON [dbo].[eh_responses]
(
	[evaluatee_userID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_eh_responses_3]    Script Date: 9/1/2020 1:10:57 PM ******/
CREATE NONCLUSTERED INDEX [IX_eh_responses_3] ON [dbo].[eh_responses]
(
	[eval_type] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_eh_responses_4]    Script Date: 9/1/2020 1:10:57 PM ******/
CREATE NONCLUSTERED INDEX [IX_eh_responses_4] ON [dbo].[eh_responses]
(
	[programID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_eh_responses_5]    Script Date: 9/1/2020 1:10:57 PM ******/
CREATE NONCLUSTERED INDEX [IX_eh_responses_5] ON [dbo].[eh_responses]
(
	[issue_date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_eh_responses_6]    Script Date: 9/1/2020 1:10:57 PM ******/
CREATE NONCLUSTERED INDEX [IX_eh_responses_6] ON [dbo].[eh_responses]
(
	[student_enrollmentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_eh_responses_answers]    Script Date: 9/1/2020 1:10:57 PM ******/
CREATE NONCLUSTERED INDEX [IX_eh_responses_answers] ON [dbo].[eh_responses_answers]
(
	[responseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_eh_responses_answers_1]    Script Date: 9/1/2020 1:10:57 PM ******/
CREATE NONCLUSTERED INDEX [IX_eh_responses_answers_1] ON [dbo].[eh_responses_answers]
(
	[itemID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_eh_responses_answers_2]    Script Date: 9/1/2020 1:10:57 PM ******/
CREATE NONCLUSTERED INDEX [IX_eh_responses_answers_2] ON [dbo].[eh_responses_answers]
(
	[optionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_i_programs]    Script Date: 9/1/2020 1:10:57 PM ******/
CREATE NONCLUSTERED INDEX [IX_i_programs] ON [dbo].[i_programs]
(
	[iID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_i_programs_1]    Script Date: 9/1/2020 1:10:57 PM ******/
CREATE NONCLUSTERED INDEX [IX_i_programs_1] ON [dbo].[i_programs]
(
	[program_parentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_i_rotationsets]    Script Date: 9/1/2020 1:10:57 PM ******/
CREATE NONCLUSTERED INDEX [IX_i_rotationsets] ON [dbo].[i_rotationsets]
(
	[iID] ASC,
	[date_start] ASC,
	[date_end] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ref_competencies]    Script Date: 9/1/2020 1:10:57 PM ******/
CREATE NONCLUSTERED INDEX [IX_ref_competencies] ON [dbo].[ref_competencies]
(
	[programID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_users]    Script Date: 9/1/2020 1:10:57 PM ******/
CREATE NONCLUSTERED INDEX [IX_users] ON [dbo].[users]
(
	[usertype] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_users_1]    Script Date: 9/1/2020 1:10:57 PM ******/
CREATE NONCLUSTERED INDEX [IX_users_1] ON [dbo].[users]
(
	[firstname] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_users_2]    Script Date: 9/1/2020 1:10:57 PM ******/
CREATE NONCLUSTERED INDEX [IX_users_2] ON [dbo].[users]
(
	[lastname] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_users_admin]    Script Date: 9/1/2020 1:10:57 PM ******/
CREATE NONCLUSTERED INDEX [IX_users_admin] ON [dbo].[users_admin]
(
	[userID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_users_admin_1]    Script Date: 9/1/2020 1:10:57 PM ******/
CREATE NONCLUSTERED INDEX [IX_users_admin_1] ON [dbo].[users_admin]
(
	[employeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_users_coordinators]    Script Date: 9/1/2020 1:10:57 PM ******/
CREATE NONCLUSTERED INDEX [IX_users_coordinators] ON [dbo].[users_coordinators]
(
	[employeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_users_coordinators_1]    Script Date: 9/1/2020 1:10:57 PM ******/
CREATE NONCLUSTERED INDEX [IX_users_coordinators_1] ON [dbo].[users_coordinators]
(
	[userID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_users_faculty]    Script Date: 9/1/2020 1:10:57 PM ******/
CREATE NONCLUSTERED INDEX [IX_users_faculty] ON [dbo].[users_faculty]
(
	[userID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_users_faculty_1]    Script Date: 9/1/2020 1:10:57 PM ******/
CREATE NONCLUSTERED INDEX [IX_users_faculty_1] ON [dbo].[users_faculty]
(
	[employeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_users_finance]    Script Date: 9/1/2020 1:10:57 PM ******/
CREATE NONCLUSTERED INDEX [IX_users_finance] ON [dbo].[users_finance]
(
	[userID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_users_finance_1]    Script Date: 9/1/2020 1:10:57 PM ******/
CREATE NONCLUSTERED INDEX [IX_users_finance_1] ON [dbo].[users_finance]
(
	[employeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_users_gme]    Script Date: 9/1/2020 1:10:57 PM ******/
CREATE NONCLUSTERED INDEX [IX_users_gme] ON [dbo].[users_gme]
(
	[userID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_users_gme_1]    Script Date: 9/1/2020 1:10:57 PM ******/
CREATE NONCLUSTERED INDEX [IX_users_gme_1] ON [dbo].[users_gme]
(
	[employeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_users_residents]    Script Date: 9/1/2020 1:10:57 PM ******/
CREATE NONCLUSTERED INDEX [IX_users_residents] ON [dbo].[users_residents]
(
	[programID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_users_residents_1]    Script Date: 9/1/2020 1:10:57 PM ******/
CREATE NONCLUSTERED INDEX [IX_users_residents_1] ON [dbo].[users_residents]
(
	[scheduleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_users_residents_2]    Script Date: 9/1/2020 1:10:57 PM ******/
CREATE NONCLUSTERED INDEX [IX_users_residents_2] ON [dbo].[users_residents]
(
	[level] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_users_residents_3]    Script Date: 9/1/2020 1:10:57 PM ******/
CREATE NONCLUSTERED INDEX [IX_users_residents_3] ON [dbo].[users_residents]
(
	[typeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_users_students]    Script Date: 9/1/2020 1:10:57 PM ******/
CREATE NONCLUSTERED INDEX [IX_users_students] ON [dbo].[users_students]
(
	[userID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_users_students_1]    Script Date: 9/1/2020 1:10:57 PM ******/
CREATE NONCLUSTERED INDEX [IX_users_students_1] ON [dbo].[users_students]
(
	[level] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_users_students_2]    Script Date: 9/1/2020 1:10:57 PM ******/
CREATE NONCLUSTERED INDEX [IX_users_students_2] ON [dbo].[users_students]
(
	[typeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_users_students_enrollment]    Script Date: 9/1/2020 1:10:57 PM ******/
CREATE NONCLUSTERED INDEX [IX_users_students_enrollment] ON [dbo].[users_students_enrollment]
(
	[userID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_users_students_enrollment_1]    Script Date: 9/1/2020 1:10:57 PM ******/
CREATE NONCLUSTERED INDEX [IX_users_students_enrollment_1] ON [dbo].[users_students_enrollment]
(
	[clerkshipID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_users_students_enrollment_2]    Script Date: 9/1/2020 1:10:57 PM ******/
CREATE NONCLUSTERED INDEX [IX_users_students_enrollment_2] ON [dbo].[users_students_enrollment]
(
	[courseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [appsys].[tbl_AppErrorLog] ADD  DEFAULT (getdate()) FOR [ErrorDate]
GO
ALTER TABLE [appsys].[tbl_AppErrorLog] ADD  DEFAULT (db_name()) FOR [DatabaseName]
GO
ALTER TABLE [appsys].[tbl_AppErrorLog] ADD  DEFAULT (host_name()) FOR [HostName]
GO
ALTER TABLE [appsys].[tbl_AppErrorLog] ADD  DEFAULT (suser_sname()) FOR [UserName]
GO
ALTER TABLE [appsys].[tbl_AppErrorLog] ADD  CONSTRAINT [DF_tbl_AppErrorLog_StackLevel]  DEFAULT ((0)) FOR [StackLevel]
GO
ALTER TABLE [dbo].[eh_evals_DelLog] ADD  CONSTRAINT [DF_eh_evals_DelLog_DelLogDateTime]  DEFAULT (getdate()) FOR [UCSF_record_deleted_datetime]
GO
ALTER TABLE [dbo].[eh_evals_items_DelLog] ADD  CONSTRAINT [DF__eh_evals___UCSF___7ADC2F5E]  DEFAULT (getdate()) FOR [UCSF_record_deleted_datetime]
GO
ALTER TABLE [dbo].[eh_evals_items_links_DelLog] ADD  CONSTRAINT [DF__eh_evals___UCSF___7CC477D0]  DEFAULT (getdate()) FOR [UCSF_record_deleted_datetime]
GO
ALTER TABLE [dbo].[eh_evals_questions_optionsets_DelLog] ADD  CONSTRAINT [DF__eh_evals___UCSF___7EACC042]  DEFAULT (getdate()) FOR [UCSF_record_deleted_datetime]
GO
ALTER TABLE [dbo].[eh_evals_questions_optionsets_options_DelLog] ADD  CONSTRAINT [DF__eh_evals___UCSF___009508B4]  DEFAULT (getdate()) FOR [UCSF_record_deleted_datetime]
GO
ALTER TABLE [dbo].[eh_evals_UpdLog] ADD  CONSTRAINT [DF_eh_evals_UpdLog_UpdLogDateTime]  DEFAULT (getdate()) FOR [UCSF_record_backup_datetime]
GO
ALTER TABLE [dbo].[eh_responses_answers_DelLog] ADD  CONSTRAINT [DF__eh_respon__UCSF___04659998]  DEFAULT (getdate()) FOR [UCSF_record_deleted_datetime]
GO
ALTER TABLE [dbo].[eh_responses_answers_UpdLog] ADD  DEFAULT (getdate()) FOR [UCSF_record_backup_datetime]
GO
ALTER TABLE [dbo].[eh_responses_DelLog] ADD  CONSTRAINT [DF__eh_respon__UCSF___027D5126]  DEFAULT (getdate()) FOR [UCSF_record_deleted_datetime]
GO
ALTER TABLE [dbo].[eh_responses_UpdLog] ADD  CONSTRAINT [DF__eh_respon__UCSF___6A30C649]  DEFAULT (getdate()) FOR [UCSF_record_backup_datetime]
GO
ALTER TABLE [dbo].[tbl_ref_confirmation_status] ADD  CONSTRAINT [DF_tbl_ref_confirmation_status_create_date]  DEFAULT (getdate()) FOR [create_date]
GO
ALTER TABLE [dbo].[tbl_ref_confirmation_status] ADD  CONSTRAINT [DF_tbl_ref_confirmation_status_create_user]  DEFAULT (suser_sname()) FOR [create_user]
GO
ALTER TABLE [dbo].[tbl_ref_enrollment_status] ADD  CONSTRAINT [DF_tbl_ref_enrollment_status_create_date]  DEFAULT (getdate()) FOR [create_date]
GO
ALTER TABLE [dbo].[tbl_ref_enrollment_status] ADD  CONSTRAINT [DF_tbl_ref_enrollment_status_create_user]  DEFAULT (suser_sname()) FOR [create_user]
GO
ALTER TABLE [dbo].[tbl_ref_eval_type] ADD  CONSTRAINT [DF_tbl_ref_eval_type_create_date]  DEFAULT (getdate()) FOR [create_date]
GO
ALTER TABLE [dbo].[tbl_ref_eval_type] ADD  CONSTRAINT [DF_tbl_ref_eval_type_create_user]  DEFAULT (suser_sname()) FOR [create_user]
GO
ALTER TABLE [dbo].[tbl_ref_option_type] ADD  CONSTRAINT [DF_tbl_ref_option_type_create_date]  DEFAULT (getdate()) FOR [create_date]
GO
ALTER TABLE [dbo].[tbl_ref_option_type] ADD  CONSTRAINT [DF_tbl_ref_option_type_create_user]  DEFAULT (suser_sname()) FOR [create_user]
GO
ALTER TABLE [dbo].[tbl_ref_question_type] ADD  CONSTRAINT [DF_tbl_ref_question_type_create_date]  DEFAULT (getdate()) FOR [create_date]
GO
ALTER TABLE [dbo].[tbl_ref_question_type] ADD  CONSTRAINT [DF_tbl_ref_question_type_create_user]  DEFAULT (suser_sname()) FOR [create_user]
GO
ALTER TABLE [dbo].[tbl_ref_response_status] ADD  CONSTRAINT [DF_tbl_ref_response_status_create_date]  DEFAULT (getdate()) FOR [create_date]
GO
ALTER TABLE [dbo].[tbl_ref_response_status] ADD  CONSTRAINT [DF_tbl_ref_response_status_create_user]  DEFAULT (suser_sname()) FOR [create_user]
GO
ALTER TABLE [dbo].[tbl_ref_usertype] ADD  CONSTRAINT [DF_tbl_ref_usertype_create_date]  DEFAULT (getdate()) FOR [create_date]
GO
ALTER TABLE [dbo].[tbl_ref_usertype] ADD  CONSTRAINT [DF_tbl_ref_usertype_create_user]  DEFAULT (suser_sname()) FOR [create_user]
GO
ALTER TABLE [dbo].[users_students_enrollment_DelLog] ADD  CONSTRAINT [DF__users_stu__UCSF___6C190EBB]  DEFAULT (getdate()) FOR [UCSF_record_deleted_datetime]
GO
ALTER TABLE [dbo].[users_students_enrollment_UpdLog] ADD  CONSTRAINT [DF__users_stu__UCSF___6E01572D]  DEFAULT (getdate()) FOR [UCSF_record_backup_datetime]
GO
ALTER TABLE [dbo].[eh_evals]  WITH CHECK ADD  CONSTRAINT [FK_eh_evals_eh_evals] FOREIGN KEY([evaluationID])
REFERENCES [dbo].[eh_evals] ([evaluationID])
GO
ALTER TABLE [dbo].[eh_evals] CHECK CONSTRAINT [FK_eh_evals_eh_evals]
GO
/****** Object:  StoredProcedure [appjob].[usp_remove_duplicate_responses_answers]    Script Date: 9/1/2020 1:10:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE procedure [appjob].[usp_remove_duplicate_responses_answers]
/*
Purpose: 
Notes:
Usage: exec appjob.usp_remove_duplicate_responses_answers  
Revisions:
Date       Developer Name   Purpose
---------- ---------------- ------------------------------------------------------------------------------------------------------
08/12/2019 BK				Original Creation:known issue of duplicate response answers due to replication
			
*/
as

--empty eh_responses_answers_deleted_duplicate
truncate table eh_responses_answers_deleted_duplicate

--insert new duplicates to eh_responses_answers_deleted_duplicate
insert into dbo.eh_responses_answers_deleted_duplicate(
[answerID],[responseID],[itemID],[optionID],[textresponse],[flag_alert],
[UCSF_init_data_import_datetime],[UCSF_last_data_import_datetime],UCSF_init_data_delete_datetime)
select ra1.[answerID],ra1.[responseID],ra1.[itemID],ra1.[optionID],ra1.[textresponse],ra1.[flag_alert],
ra1.[UCSF_init_data_import_datetime],ra1.[UCSF_last_data_import_datetime],getdate() as UCSF_init_data_delete_datetime
from eh_responses_answers ra1
where exists(
	select 1
	from dbo.eh_responses_answers ra2
	where ra1.responseID=ra2.responseID
	and ra1.itemID=ra2.itemID
	and ra1.answerID>ra2.answerID)


--delete new duplicates from eh_responses_answers
delete ra1
from dbo.eh_responses_answers ra1
inner join dbo.eh_responses_answers_deleted_duplicate rad on rad.answerID=ra1.answerID








GO
/****** Object:  StoredProcedure [apprpt].[usp_rpt_response_exception]    Script Date: 9/1/2020 1:10:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [apprpt].[usp_rpt_response_exception]
/*
Purpose: check data exception in eh_responses
Notes: 
Usage: exec apprpt.usp_rpt_response_exception
					
Revisions:
Date       Developer Name   Purpose
---------- ---------------- ---------------------------------------------------
09/04/2018	BK				Original Creation
12/04/2019	BK				Added checking for Student Summary forms
*/
as

------------------------------------------------------------------------------------------
--New Student Summary form for course directors that's not set up in ADM
------------------------------------------------------------------------------------------
select 'New Student Summary form',* 
from dbo.eh_evals e
where e.title like '%student summary%clerkship director%' and eval_status=1 and eval_active=1 --Student Summary Submitted by Course Directors
and not exists(
	select 1
	from adm.dbo.tbl_ref_assessment a
	where a.Assessment_ID_MedHub=e.evaluationID
	and a.Assessment_Group_ID=12)

------------------------------------------------------------------------------------------
--check if there's any non-text response questions for Student Summary 
--used by course directors missing competency configurations
------------------------------------------------------------------------------------------
select *
from dbo.eh_evals e
inner join dbo.eh_evals_items ei on ei.evaluationID=e.evaluationID
where e.title like '%student summary%clerkship director%' and eval_status=1 and eval_active=1 --Student Summary Submitted by Course Directors
and ei.question not like 'Is this an in-progress evaluation%' --Question to indicate if it's the final evaluation for longitudinal courses
and ei.question_type<>3 --Exclude questions with text responses
and not exists(
	select 1
	from dbo.eh_evals_items_links eil
	where eil.itemID=ei.itemID)



--missing completion_date for completed evaluations
select distinct 'missing completion_date' as Exception,r.responseID,evaluatee_userID,ut.usertype_descr as evaluatee_usertype,u.firstname,u.lastname,r.issue_date,r.completion_date,r.response_title  
from eh_responses r
left join users u on u.userID=r.evaluatee_userID
left join tbl_ref_usertype ut on ut.usertype=u.usertype
where r.response_status=3 and r.completion_date is null
and evaluatee_userID<>0

--issue_date>completion_date
select 'issue_date>completion_date' as Exception,ut.usertype_descr,u.firstname,u.lastname,r.issue_date,r.completion_date,r.response_title  
from eh_responses r
left join users u on u.userID=r.evaluatee_userID
left join tbl_ref_usertype ut on ut.usertype=u.usertype
where r.issue_date>r.completion_date

--completed evaluation with non-enrolled course
select 'completed evaluation with non-enrolled course' as Exception,u.lastname,u.firstname,
rc.clerkship_abbrev,se.[start_date],se.end_date,res.enrollment_status_descr,
r.issue_date,r.completion_date,se.class_grade,r.response_title,r.responseID
from eh_responses r
inner join users u on u.userID=r.evaluatee_userID
inner join users_students_enrollment se on se.enrollmentID=r.student_enrollmentID
inner join tbl_ref_enrollment_status res on res.enrollment_status=se.enrollment_status
left join i_clerkships rc on rc.clerkshipID=se.clerkshipID
where se.enrollment_status<>1
and r.response_status=3
order by r.completion_date desc,u.lastname,u.firstname,rc.clerkship_abbrev

--duplicate evaluations
--SELECT 'duplicate evaluations' as Exception,* 
SELECT 'duplicate evaluations' as Exception,r1.responseID,r1.issue_date,r1.completion_date,r1.response_title,rc.clerkship_name
FROM dbo.eh_responses r1 
LEFT JOIN dbo.i_clerkships rc ON rc.clerkshipID=r1.clerkshipID
WHERE EXISTS(
	SELECT 1
	FROM dbo.eh_responses r2
	WHERE r1.student_enrollmentID=r2.student_enrollmentID
	AND r1.evaluationID=r2.evaluationID
	AND r2.response_title LIKE '%(Clerkship Director) (FINAL)'
	AND r1.responseID<>r2.responseID)
AND r1.evaluationID=4470
AND r1.response_title LIKE '%(Clerkship Director) (FINAL)'
AND r1.response_title NOT LIKE '%Test Student%'
ORDER BY r1.student_enrollmentID

--evaluation with grade but with response_status<>3 
select distinct 'imcomplete core clerkship evaluation with grade' as Exception,g.enrollmentID,rc.clerkship_name,g.grade_official,r.responseID,evaluatee_userID,
	ut.usertype_descr as evaluatee_usertype,u.firstname,u.lastname,r.response_status,r.issue_date,r.completion_date,r.response_title  
from eh_responses r
inner join vw_users_students_enrollment_grades_last_submitted g on g.enrollmentID=r.student_enrollmentID
inner join dbo.i_clerkships rc ON rc.clerkshipID=r.clerkshipID
inner join users u on u.userID=r.evaluatee_userID
left join tbl_ref_usertype ut on ut.usertype=u.usertype
where r.response_status<>3 and g.grade_official is not null
and evaluatee_userID<>0
and rc.clerkship_name like '%110%PISCES%' 
and rc.clerkship_name like '%110%KLIC%'
order by r.issue_date



GO
/****** Object:  StoredProcedure [apprpt].[usp_rpt_students_enrollment_exception]    Script Date: 9/1/2020 1:10:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [apprpt].[usp_rpt_students_enrollment_exception]
/*
Purpose: check data exception in users_students_enrollment
Notes: 
Usage: exec apprpt.usp_rpt_students_enrollment_exception
					
Revisions:
Date       Developer Name   Purpose
---------- ---------------- ---------------------------------------------------
09/04/2018 BK				Original Creation
*/
as

--duplicate schedule
select 'duplicate schedule' as Exception,ut.usertype_descr,se.enrollmentID,u.userID,u.firstname,u.lastname,
	se.[start_date],se.end_date,se.clerkshipID,rc.clerkship_name,res.enrollment_status_descr
from users_students_enrollment se
inner join users u on u.userID=se.userID and se.enrollment_status=1
inner join i_clerkships rc on rc.clerkshipID=se.clerkshipID
left join tbl_ref_usertype ut on ut.usertype=u.usertype
left join tbl_ref_enrollment_status res on res.enrollment_status=se.enrollment_status
where exists(
	select 1
	from users_students_enrollment se2
	where se2.userID=se.userID
		and se2.clerkshipID=se.clerkshipID
		and se2.[start_date]=se.[start_date]
		and se2.enrollmentID<>se.enrollmentID
		and se2.enrollment_status=1)
and enrollmentID not in (57266,57277) --test schedules set up by Sandy
order by u.lastname,u.firstname,se.[start_date]

SELECT 'same enrollment for different student',
u1.userID AS userID_responses,se.enrollmentID,u1.lastname AS lastname_responses,
u2.userID AS userID_enrollment,u1.firstname AS firstname_responses,
u2.lastname AS lastname_enrollment,u2.firstname AS firstname_enrollment
FROM eh_responses r
INNER JOIN users_students_enrollment se ON se.enrollmentID=r.student_enrollmentID
LEFT JOIN users u1 ON u1.userID=r.evaluatee_userID
LEFT JOIN users u2 ON u2.userID=se.userID
WHERE se.userID<>r.evaluatee_userID

--select * from users_students_enrollment where userid=91593 AND clerkshipID=1300
--select * from eh_responses where evaluatee_userID=91593 and student_enrollmentID in (45976,45979)

select 'enrollment missing quarter info', 
	e.enrollmentID,e.userID,u.lastname,u.firstname,e.clerkshipID,c.clerkship_name,e.[start_date],e.end_date 
from users_students_enrollment e
inner join users u on u.userID=e.userID
inner join i_clerkships c on c.clerkshipID=e.clerkshipID
where block_periodID=0
and e.userID<>0





GO
/****** Object:  StoredProcedure [apprpt].[usp_rpt_users_exception]    Script Date: 9/1/2020 1:10:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [apprpt].[usp_rpt_users_exception]
/*
Purpose: check data exception in users_students_enrollment
Notes: 
Usage: exec apprpt.usp_rpt_users_exception
					
Revisions:
Date       Developer Name   Purpose
---------- ---------------- ---------------------------------------------------
09/04/2018 BK				Original Creation
01/23/2020	BK				Added filter on "active"
*/
as

--invalid employee ID

select 'missing student employee ID' as Exception,u.userID,u.firstname,u.lastname,us.demo_employeeID as employeeID
from users u 
left join users_students us on us.userID=u.userID
where u.usertype=8
and isnull(us.demo_employeeID,'')=''
and u.firstname not like '%(Test Student)'
and u.lastname not like '%(Test Student)'
and u.active=1

union

select 'invalid student employee ID' as Exception,u.userID,u.firstname,u.lastname,us.demo_employeeID as employeeID
from users u 
left join users_students us on us.userID=u.userID
where u.usertype=8
and u.firstname not like '%(Test Student)'
and u.lastname not like '%(Test Student)'
and isnull(us.demo_employeeID,'')<>''
and (us.demo_employeeID not like '0%'
	or len(us.demo_employeeID) <>9)
and u.active=1



--invalid email
select 'invalid email' as Exception,u.userID,u.firstname,u.lastname,u.email,ut.usertype_descr
from users u
inner join tbl_ref_usertype ut on ut.usertype=u.usertype
where u.email not like '%@%.%'
and u.email is not null
and u.email <> ''
and u.email <> 'archived user'
and u.userID not in (90880,52504,1,2,4) --Test users/medhub support users
and u.active=1
order by ut.usertype_descr,u.lastname,u.firstname
GO
/****** Object:  StoredProcedure [appsys].[usp_AppErrorLog]    Script Date: 9/1/2020 1:10:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [appsys].[usp_AppErrorLog]
(
@ErrProc sysname
)/*
Purpose: Procedure is used to log application errors to a local table.  
Notes:  Can only be used within a TRY...CATCH block.  
		This proc should only be used for procedures that call other procedures
Usage: Should be used with 2005 error handling process.
Revisions:
Date       Developer Name   Purpose
---------- ---------------- -------------------------------------------
09/12/2007 CCC				Initial Creation
10/25/2007 CCC				Modified to work for subprocs
10/29/2007 CL				Created a wrapper procedure to separate insert from raiserror logic
06/09/2010 CH				Modified RAISERROR to pass @ErrMsg into %s to avoid format issue if the error message contains %
*/
AS
BEGIN

    SET NOCOUNT ON
	DECLARE @ERR int, @ERR2 int,
			@ErrNum int,
			@ErrMsg VARCHAR(MAX), 
			@ErrSeverity INT, 
			@ErrState INT,
			--@ErrProc varchar(200),
			@ErrLine INT,	
	 		@ERRMSGInternal varchar(200),
			@ErrStack varchar(max),
            @ParentAppErrid int,
		    @rootAppErrid int,
			@AppErrid int,
			@nPos int,
			@StackDelim char(1),
			@StackLevel int


			SELECT	@ERR = 0, 
			@ERRMSGInternal = '',
			@StackDelim=';',
			@StackLevel=0

		SELECT @ErrNum=ERROR_NUMBER(),
            @ErrSeverity=ERROR_SEVERITY(),
            @ErrState=ERROR_STATE(),
            @ErrLine=ERROR_LINE(),
            --@ErrProc=ERROR_PROCEDURE(),
			@ERRMsg=ERROR_MESSAGE()
			

		SET @ErrStack=@ErrProc+':'+CONVERT(varchar(20), @ERRLine)

		SET @nPos=CHARINDEX('~',@ErrMsg)

		--Get @ParentAppErrid and set the correct information for all error fields
      	IF @nPos > 0 BEGIN
			SET @ParentAppErrid=CAST(LEFT(@ERRMsg,@nPos-1) as integer)
			SELECT @rootAppErrid=rootApperrid,@ErrStack=@ErrStack+@StackDelim+ErrorStack,@ErrNum=ErrorNumber,@ErrSeverity=ErrorSeverity,
                  @ErrState=ErrorState,@StackLevel=StackLevel+1,@ErrMsg=ErrorMessage
			FROM appsys.tbl_AppErrorlog
			where AppErrid=@ParentAppErrid
		END

        
		
		EXEC @ERR2=appsys.usp_AppErrorLog_ins @ErrProc=@ErrProc,@ErrNum=@ErrNum,@ErrSeverity=@ErrSeverity,@ErrState=@ErrState,@ErrLine=@ErrLine,@ErrMsg=@ErrMsg,
					@ErrStack=@ErrStack,@StackLevel=@StackLevel,
                   @appErrid=@AppErrid OUTPUT,@rootAppErrid=@rootAppErrid,@parentAppErrid=@ParentAppErrid
		SET @ERR=@@ERROR+@ERR2
		IF @ERR <> 0 GOTO CLOSEUP
		
		SET @ParentAppErrid=@AppErrid
					
		SET @ERRMSG=CAST(@ParentAppErrid as varchar(20))+'~'+@ErrStack+'~~'+@ErrMsg

		RAISERROR ('%s',@ErrSeverity, @ErrState,@ErrMsg)

CLOSEUP:
RETURN @ERR
END

GO
/****** Object:  StoredProcedure [appsys].[usp_AppErrorLog_ins]    Script Date: 9/1/2020 1:10:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [appsys].[usp_AppErrorLog_ins]
(
@ErrProc varchar(200),
@ErrNum int,
@ErrMsg VARCHAR(MAX), 
@ErrSeverity INT, 
@ErrState INT,
@ErrLine INT,
@ErrStack varchar(max),
@AppErrid int OUTPUT,
@rootAppErrid int,
@ParentAppErrid int,
@StackLevel int
)
AS 
SET NOCOUNT ON
DECLARE @ERR int,@ErrMsgInternal varchar(500)


INSERT INTO tbl_AppErrorLog
( 
ServerName, ErrorNumber, ErrorSeverity, ErrorState, ErrorProcedure, ErrorLine, ErrorMessage,ErrorStack,RootAppErrid,ParentAppErrid,StackLevel
)
VALUES
(
@@ServerName, @ErrNum, @ErrSeverity, @ErrState, @ErrProc, @ErrLine, @ErrMsg ,@ErrStack,@rootAppErrid,@ParentAppErrid,@StackLevel
)

SELECT	@ERR = @@ERROR,@AppErrid=SCOPE_IDENTITY(),
@ERRMSGInternal = 'Usp_tbl_AppErrLog_ins failed to insert data to table tbl_AppErrorLog'
IF  @ERR <> 0 GOTO CLOSEUP

CLOSEUP:
IF @ERR <> 0 RAISERROR(@ErrMsgInternal,16,1)
RETURN @ERR

GO
/****** Object:  StoredProcedure [appsys].[usp_sys_bldsp_batch]    Script Date: 9/1/2020 1:10:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [appsys].[usp_sys_bldsp_batch] 
(
@tablename sysname = NULL,
@spType varchar(50)= NULL
)
AS
/*debug
EXEC appsys.usp_sys_bldsp_batch @tablename='dbo.test',@sptype=null
*/
BEGIN
SET NOCOUNT ON
DECLARE @tbltable table (rid int identity(1,1),tablename sysname)
DECLARE @cnt int, @cntmax int
DECLARE @tblname varchar(100)

IF @tablename is not null
BEGIN
	SELECT @tablename=replace(replace(@tablename,'[',''),']','')
	IF @tablename not like '%.%' 
		SELECT @tableName='dbo.'+@tablename
END
 
INSERT INTO @tbltable(tablename)
SELECT s.name+'.'+t.name 
FROM sys.tables t
INNER JOIN sys.schemas s ON t.schema_id=s.schema_id
WHERE t.type='u' AND t.name like 'tbl_%' 
AND s.name+'.'+ t.name =isnull(@tablename,s.name+'.'+t.name)

SELECT @cnt=1, @cntmax=max(rid) 
FROM @tbltable

WHILE @cnt<=@cntmax
BEGIN
	SELECT @tblname=tablename FROM @tbltable WHERE rid=@cnt
	IF ISNULL(@spType,'upd')='upd'
		EXEC appsys.usp_sys_bldsp_upd @tablename=@tblname
	IF ISNULL(@spType,'ins')='ins'
		EXEC appsys.usp_sys_bldsp_ins @tablename=@tblname
	IF ISNULL(@spType,'del')='del'
		EXEC appsys.usp_sys_bldsp_del @tablename=@tblname
	IF ISNULL(@spType,'sel')='sel'
		EXEC appsys.usp_sys_bldsp_sel @tablename=@tblname

	SET @cnt=@cnt+1
END

END

GO
/****** Object:  StoredProcedure [appsys].[usp_sys_bldsp_del]    Script Date: 9/1/2020 1:10:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [appsys].[usp_sys_bldsp_del]
(
@tablename sysname
)
AS
BEGIN
/*Debug
SET NOCOUNT ON
DECLARE @tablename sysname
SELECT @tablename='tbl_edutask'
--*/
SET NOCOUNT ON
DECLARE @tmpt TABLE (linenum int IDENTITY(1,1) PRIMARY KEY ,linetxt varchar(1000))
DECLARE @stmp varchar(4000),@stmp2 varchar(4000),@linenum int,@stindent varchar(10)
DECLARE @tblPK table (rid int identity(1,1), Column_Name sysname)
DECLARE @tableNameNoPrefix sysname,@schema sysname,@tableNameWSchema sysname
DECLARE @ErrNum int
SET @ErrNum=0

DECLARE @maxcnt int, @cnt int

SELECT @cnt=0,@maxcnt=0

BEGIN TRY
	SELECT @tablename=replace(replace(@tablename,'[',''),']','')

	IF @tablename like '%.%' 
		SELECT @tableNameWSchema=@tablename,
			   @schema=left(@tablename,charindex('.',@tablename)-1),
			   @tablename=right(@tablename,len(@tablename)-charindex('.',@tablename))
	ELSE 
		SELECT @schema='dbo',
				@tableNameWSchema='dbo.'+@tablename

	SELECT @cnt=CHARINDEX('tbl_ref_', @tablename),@maxcnt=CHARINDEX('tbl_', @tablename)
	-- if @cnt=1
	-- 	SELECT @tablenameNoPrefix=right(@tablename,len(@tablename)-8)
	-- else 
	IF @maxcnt=1
		SELECT @tablenameNoPrefix=right(@tablename,len(@tablename)-4)
	ELSE SELECT @tablenameNoPrefix=@tablename


	SET @stmp='CREATE PROCEDURE '+ @schema +'.usp_'+@tablenameNoPrefix+'_del ('
	SET @stindent=CHAR(9)

	INSERT @tmpt(linetxt) VALUES (@stmp)


	INSERT @tmpt(linetxt) 
	SELECT @stindent+declaretxt+',' 
	FROM  dbo.ufn_sys_TableFlds(@schema,@tablename)
	where isprimarykey=1
	ORDER by colorder

	SELECT @linenum=MAX(linenum) FROM @tmpt

	UPDATE @tmpt
	SET linetxt=SUBSTRING(linetxt,1,LEN(linetxt)-1)+')'
	WHERE linenum=@linenum

	--insert comment
	INSERT @tmpt(linetxt)
	select '/*'
		UNION all
		SELECT 'Purpose: ' + 'Delete data from '+@tableNameWSchema
		UNION all
		SELECT 'Notes:' 
		UNION all
		SELECT 'Usage: ' 
		UNION all
		SELECT 'Revisions:'
		UNION all
		SELECT 'Date       Developer Name   Purpose'
		UNION all
		SELECT '---------- ---------------- ---------------------------------------------------'
		UNION all
		SELECT convert(char(10), getdate(), 101) + ' ' + 'System Generated' + ' '+ 'Original creation'
		UNION all
		SELECT '*/'
		UNION all
		SELECT '/*debug'
		UNION all
		SELECT '*/'


	INSERT @tmpt(linetxt) VALUES ('AS')
	INSERT @tmpt(linetxt) VALUES ('BEGIN')
	INSERT @tmpt(linetxt) VALUES ('SET NOCOUNT ON')
	INSERT @tmpt(linetxt) VALUES ('')
	INSERT @tmpt(linetxt) VALUES ('BEGIN TRY')
	INSERT @tmpt(linetxt) VALUES ('	--Initialization, Validation block')
	INSERT @tmpt(linetxt) VALUES ('	--RAISERROR(''Invalid data'',16,1)')
	INSERT @tmpt(linetxt) VALUES ('')
	INSERT @tmpt(linetxt) VALUES ('	BEGIN TRAN')
	INSERT @tmpt(linetxt) VALUES ('')
	INSERT @tmpt(linetxt) VALUES ('	DELETE FROM '+@tableNameWSchema)


	--get the primary key
	INSERT INTO @tblPK(Column_name)
	SELECT fldname
	FROM  dbo.ufn_sys_TableFlds(@schema,@tablename)
	WHERE isprimarykey=1
	ORDER BY colorder

	SELECT @cnt=@@rowcount
	--tbe table does not have primary key, can not generate trigger
	IF @cnt=0
		RAISERROR('The table does not have primary key, can not generate procedure',16,1)
	
	SELECT @stmp='		WHERE ',@cnt=1,@maxcnt=max(rid) from @tblPK 
	WHILE @cnt<=@maxcnt 
	BEGIN
		SELECT @stmp=@stmp+ Column_Name+'=@'+Column_Name from @tblPK where rid=@cnt
		INSERT @tmpt(linetxt) VALUES (@stmp)
		SELECT @stmp='		AND ', @cnt=@cnt+1
	END

	--INSERT @tmpt(linetxt) VALUES ('WHERE @key=key')
	INSERT @tmpt(linetxt) VALUES ('	IF XACT_STATE()=1')
	INSERT @tmpt(linetxt) VALUES ('		COMMIT TRAN')
	INSERT @tmpt(linetxt) VALUES ('END TRY')
	INSERT @tmpt(linetxt) VALUES ('BEGIN CATCH')
	INSERT @tmpt(linetxt) VALUES ('	IF XACT_STATE()<>0')
	INSERT @tmpt(linetxt) VALUES ('		ROLLBACK TRAN ')
	INSERT @tmpt(linetxt) VALUES ('')
	INSERT @tmpt(linetxt) VALUES ('	    EXEC appsys.usp_AppErrorLog @ErrProc=usp_'+@tablenameNoPrefix+'_del')
	INSERT @tmpt(linetxt) VALUES ('')
	INSERT @tmpt(linetxt) VALUES ('END CATCH')
	INSERT @tmpt(linetxt) VALUES ('')
	INSERT @tmpt(linetxt) VALUES ('END')
	INSERT @tmpt(linetxt) VALUES ('')
	INSERT @tmpt(linetxt) VALUES ('GO')

	SELECT linetxt AS '--PROCEDURE--' FROM @tmpt

END TRY
BEGIN CATCH
    EXEC appsys.usp_AppErrorLog @ErrProc='usp_sys_bldsp_del'
END CATCH

CLOSEUP:
IF @ErrNUM <> 0

RETURN @ErrNUM
END

GO
/****** Object:  StoredProcedure [appsys].[usp_sys_bldsp_ins]    Script Date: 9/1/2020 1:10:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [appsys].[usp_sys_bldsp_ins]
(
@tablename sysname
)
AS
/*Debug
SET NOCOUNT ON
DECLARE @tablename sysname
SELECT @tablename='tbl_edutask'
--*/
BEGIN
SET NOCOUNT ON

DECLARE @tmpt TABLE (linenum int IDENTITY(1,1) PRIMARY KEY ,linetxt varchar(1000))
DECLARE @stmp varchar(4000),@stmp2 varchar(4000),@linenum int,@stindent varchar(10)
DECLARE @tableNameNoPrefix sysname,@schema sysname,@tableNameWSchema sysname
DECLARE @ErrNum int

DECLARE @maxcnt int, @cnt int
DECLARE @IdentityFldName varchar(100)
SET @ErrNum=0

BEGIN TRY
	SELECT @tablename=replace(replace(@tablename,'[',''),']','')

	IF @tablename like '%.%' 
		SELECT @tableNameWSchema=@tablename,
			   @schema=left(@tablename,charindex('.',@tablename)-1),
			   @tablename=right(@tablename,len(@tablename)-charindex('.',@tablename))
	ELSE 
		SELECT @schema='dbo',
				@tableNameWSchema='dbo.'+@tablename

	SELECT @cnt=0,@maxcnt=0

	SELECT @cnt=CHARINDEX('tbl_ref_', @tablename),@maxcnt=CHARINDEX('tbl_', @tablename)
	-- if @cnt=1
	-- 	SELECT @tablenameNoPrefix=right(@tablename,len(@tablename)-8)
	-- else 
	IF @maxcnt=1
	SELECT @tablenameNoPrefix=right(@tablename,len(@tablename)-4)
	ELSE SELECT @tablenameNoPrefix=@tablename



	SET @stindent=CHAR(9)+CHAR(9)
	SET @stmp='CREATE PROCEDURE '+ @schema +'.usp_'+@tablenameNoPrefix+'_ins ('

	INSERT @tmpt(linetxt) VALUES (@stmp)

	SELECT @IdentityFldName=fldname
	FROM  dbo.ufn_sys_TableFlds(@schema,@tablename)
	where isidentity=1

	INSERT @tmpt(linetxt) 
	SELECT @stindent+declaretxtIns+',' 
	FROM  dbo.ufn_sys_TableFlds(@schema,@tablename) 
	--where fldname  not in ('CreateDate','CreateBy','ModifyDate','ModifyBy')
	where fldname  not in ('ModifyDate','ModifyEntID','CreateDate','CreateEntId','CreateBy','ModifyBy')
	--and isidentity=0
	ORDER by colorder


	INSERT @tmpt(linetxt) 
	SELECT @stindent+ case when fldname ='CreateEntid' then '@UserEntID int )' 
			else '@UserName varchar(20) )' end
	FROM  dbo.ufn_sys_TableFlds(@schema,@tablename) 
	where fldname  in ('CreateEntid','CreateBy')

	SELECT @linenum=MAX(linenum) FROM @tmpt

	UPDATE @tmpt
	SET linetxt=replace (linetxt,',',')')
	WHERE linenum=@linenum

	--insert comment
	INSERT @tmpt(linetxt)
	select '/*'
	union all
	select 'Purpose: ' + 'Insert data into '+@tableNameWSchema
	union all
	select 'Notes:' 
	union all
	select 'Usage: ' 
	union all
	select 'Revisions:'
	union all
	select 'Date       Developer Name   Purpose'
	union all
	select '---------- ---------------- ---------------------------------------------------'
	union all
	select convert(char(10), getdate(), 101) + ' ' + 'System Generated' + ' '+ 'Original creation'
	union all
	select '*/'
	union all
	select '/*debug'
	union all
	select '*/'


	INSERT @tmpt(linetxt) VALUES ('AS')
	INSERT @tmpt(linetxt) VALUES ('BEGIN')
	INSERT @tmpt(linetxt) VALUES ('SET NOCOUNT ON')
	INSERT @tmpt(linetxt) VALUES ('')
	INSERT @tmpt(linetxt) VALUES ('BEGIN TRY')
	INSERT @tmpt(linetxt) VALUES ('	--Initialization, Validation block')
	INSERT @tmpt(linetxt) VALUES ('	--RAISERROR(''Invalid data'',16,1)')
	INSERT @tmpt(linetxt) VALUES ('')
	INSERT @tmpt(linetxt) VALUES ('	BEGIN TRAN')
	INSERT @tmpt(linetxt) VALUES ('')
	INSERT @tmpt(linetxt) VALUES ('	INSERT '+@tableNameWSchema+'(')

	INSERT @tmpt(linetxt) 
	SELECT @stindent+fldname+',' 
	FROM  dbo.ufn_sys_TableFlds(@schema,@tablename) 
	--where fldname  not in ('CreateDate','CreateBy','ModifyDate','ModifyBy')
	WHERE isidentity=0
	ORDER by colorder 

	SELECT @linenum=MAX(linenum) FROM @tmpt
	UPDATE @tmpt
	SET linetxt=SUBSTRING(linetxt,1,LEN(linetxt)-1)+')'
	WHERE linenum=@linenum

	INSERT @tmpt(linetxt) VALUES ('	VALUES (')

	INSERT @tmpt(Linetxt)
	SELECT @stindent+
	(CASE WHEN fldname in ('CreateDate','ModifyDate') then 'Getdate(),'
	 WHEN fldname in ('CreateEntid','ModifyEntid') then '@UserEntId,'
	 WHEN fldname in ('CreateBy','ModifyBy') then '@UserName,'
	ELSE '@'+fldname+',' 
	END)
	FROM  dbo.ufn_sys_TableFlds(@schema,@tablename) 
	--where fldname  not in ('CreateDate','CreateBy','ModifyDate','ModifyBy')
	WHERE isidentity=0
	ORDER by colorder

	SELECT @linenum=MAX(linenum) FROM @tmpt

	UPDATE @tmpt
	SET linetxt=SUBSTRING(linetxt,1,LEN(linetxt)-1)+')'
	WHERE linenum=@linenum

	INSERT @tmpt(linetxt) VALUES ('')

	INSERT @tmpt(linetxt) VALUES ( isnull('	SELECT  @'+@IdentityFldName +'=Scope_identity()',''))

	INSERT @tmpt(linetxt) VALUES ('	IF XACT_STATE()=1')
	INSERT @tmpt(linetxt) VALUES ('		COMMIT TRAN')
	INSERT @tmpt(linetxt) VALUES ('END TRY')
	INSERT @tmpt(linetxt) VALUES ('BEGIN CATCH')
	INSERT @tmpt(linetxt) VALUES ('	IF XACT_STATE()<>0')
	INSERT @tmpt(linetxt) VALUES ('		ROLLBACK TRAN ')
	INSERT @tmpt(linetxt) VALUES ('')
	INSERT @tmpt(linetxt) VALUES ('	    EXEC appsys.usp_AppErrorLog @ErrProc=usp_'+@tablenameNoPrefix+'_ins')
	INSERT @tmpt(linetxt) VALUES ('')
	INSERT @tmpt(linetxt) VALUES ('END CATCH')
	INSERT @tmpt(linetxt) VALUES ('')
	INSERT @tmpt(linetxt) VALUES ('END')
	INSERT @tmpt(linetxt) VALUES ('')
	INSERT @tmpt(linetxt) VALUES ('GO')

	SELECT linetxt AS '--PROCEDURE--' FROM @tmpt
END TRY
BEGIN CATCH
    EXEC appsys.usp_AppErrorLog @ErrProc='usp_sys_bldsp_ins'
END CATCH

CLOSEUP:
IF @ErrNum <> 0

RETURN @ErrNum
END

GO
/****** Object:  StoredProcedure [appsys].[usp_sys_bldsp_ins_batch]    Script Date: 9/1/2020 1:10:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [appsys].[usp_sys_bldsp_ins_batch] 
AS 
/*debug
appsys.usp_sys_bldsp_ins_batch 
*/
BEGIN
SET NOCOUNT ON
DECLARE @tbltable table (rid int identity(1,1),tablename sysname)
DECLARE @cnt int, @cntmax int
DECLARE @tblname varchar(100)

INSERT INTO @tbltable(tablename)
SELECT s.name+'.'+t.name 
FROM sys.tables t
INNER join sys.schemas s on t.schema_id=s.schema_id
WHERE t.type='u' and t.name like 'tbl_%' 

SELECT @cnt=1, @cntmax=max(rid) from @tbltable
WHILE @cnt<=@cntmax
BEGIN
	SELECT @tblname=tablename from @tbltable where rid=@cnt
	EXEC appsys.usp_sys_bldsp_ins @tablename=@tblname
	set @cnt=@cnt+1
	SELECT 'go'
END

END

GO
/****** Object:  StoredProcedure [appsys].[usp_sys_bldsp_sel]    Script Date: 9/1/2020 1:10:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [appsys].[usp_sys_bldsp_sel]
(@tablename sysname)
AS
BEGIN
/*Debug
DECLARE @tablename sysname
SELECT @tablename='tbl_edutask'
--*/
SET NOCOUNT ON
DECLARE @tmpt TABLE (linenum int IDENTITY(1,1) PRIMARY KEY ,linetxt varchar(1000))
DECLARE @stmp varchar(4000),@stmp2 varchar(4000),@linenum int,@stindent varchar(10)
DECLARE @tblPK table (rid int identity(1,1), Column_Name sysname)
DECLARE @tableNameNoPrefix sysname,@schema sysname,@tableNameWSchema sysname
DECLARE @maxcnt int, @cnt int
DECLARE @ErrNum int

SELECT @ErrNum=0
SELECT @cnt=0,@maxcnt=0


BEGIN TRY
	SELECT @tablename=replace(replace(@tablename,'[',''),']','')

	IF @tablename like '%.%' 
		SELECT @tableNameWSchema=@tablename,
			   @schema=left(@tablename,charindex('.',@tablename)-1),
			   @tablename=right(@tablename,len(@tablename)-charindex('.',@tablename))
	ELSE 
		SELECT @schema='dbo',
				@tableNameWSchema='dbo.'+@tablename

	SELECT @cnt=CHARINDEX('tbl_ref_', @tablename),@maxcnt=CHARINDEX('tbl_', @tablename)
	-- if @cnt=1
	-- 	SELECT @tablenameNoPrefix=right(@tablename,len(@tablename)-8)
	-- else 
	IF @maxcnt=1
		SELECT @tablenameNoPrefix=right(@tablename,len(@tablename)-4)
	ELSE SELECT @tablenameNoPrefix=@tablename

	--select @tablename,@schema,@tableNameWSchema,@tablenameNoPrefix

	SET @stmp='CREATE PROCEDURE '+ @schema +'.usp_'+@tablenameNoPrefix+'_sel ('
	SET @stindent=CHAR(9)+CHAR(9)

	INSERT @tmpt(linetxt) VALUES (@stmp)

	INSERT @tmpt(linetxt) 
	SELECT @stindent+declaretxtSel+',' 
	FROM  dbo.ufn_sys_TableFlds(@schema,@tablename)
	where isnullable='No'
	and fldname not in ('ModifyDate','ModifyEntID','CreateDate','CreateEntId','CreateBy','ModifyBy')
	ORDER by colorder

	SELECT @linenum=MAX(linenum) FROM @tmpt

	UPDATE @tmpt
	SET linetxt=SUBSTRING(linetxt,1,LEN(linetxt)-1)+')'
	WHERE linenum=@linenum

	--insert comment
	INSERT @tmpt(linetxt)
	select '/*'
		union all
		select 'Purpose: ' + 'Select data from '+ @tableNameWSchema
		union all
		select 'Notes:' 
		union all
		select 'Usage: ' 
		union all
		select 'Revisions:'
		union all
		select 'Date       Developer Name   Purpose'
		union all
		select '---------- ---------------- ---------------------------------------------------'
		union all
		select convert(char(10), getdate(), 101) + ' ' + 'System Generated' + ' '+ 'Original Creation'
		union all
		select '*/'
		union all
		select '/*debug'
		union all
		select '*/'

	INSERT @tmpt(linetxt) VALUES ('AS')
	INSERT @tmpt(linetxt) VALUES ('BEGIN')
	INSERT @tmpt(linetxt) VALUES ('SET NOCOUNT ON')
	INSERT @tmpt(linetxt) VALUES ('')
	INSERT @tmpt(linetxt) VALUES ('BEGIN TRY')
	INSERT @tmpt(linetxt) VALUES ('	--Initialization, Validation block')
	INSERT @tmpt(linetxt) VALUES ('	--RAISERROR(''Invalid data'',16,1)')
	INSERT @tmpt(linetxt) VALUES ('')
	INSERT @tmpt(linetxt) VALUES ('	SELECT ')
	
	--get all of the fileds
	SET @stmp2=''

	SELECT @stmp2=@stmp2+'['+fldname+'] ,' 		
	FROM  dbo.ufn_sys_TableFlds(@schema,@tablename)
	ORDER by colorder

	SELECT @stmp2=@stindent+LEFT(@stmp2,Len(@stmp2)-2)

	INSERT @tmpt(linetxt) VALUES (@stmp2)
	 INSERT @tmpt(linetxt) VALUES ('		FROM '+ @tableNameWSchema)

	--get the primary key
	insert into @tblPK(Column_name)
	select fldname
	from dbo.ufn_sys_TableFlds(@schema,@tablename)
	where isnullable='No'
	and fldname not in ('ModifyDate','ModifyEntID','CreateDate','CreateEntId','CreateBy','ModifyBy')
	order by colorder

	select @cnt=@@rowcount

	--tbe table does not have primary key, can not generate trigger
	if @cnt=0
		raiserror ('The table does not have primary key, can not generate procedure',16,1)

	select @stmp='		WHERE ',@cnt=1,@maxcnt=max(rid) from @tblPK 
	while @cnt<=@maxcnt 
	begin
		select @stmp=@stmp+ +'(@' +Column_Name+' is null or '+Column_Name+'=@'+Column_Name+')' from @tblPK where rid=@cnt
		INSERT @tmpt(linetxt) VALUES (@stmp)
		select @stmp='		AND ', @cnt=@cnt+1
	end

	--INSERT @tmpt(linetxt) VALUES ('WHERE @key=key')
	INSERT @tmpt(linetxt) VALUES ('END TRY')
	INSERT @tmpt(linetxt) VALUES ('BEGIN CATCH')
	INSERT @tmpt(linetxt) VALUES ('')
	INSERT @tmpt(linetxt) VALUES ('	    EXEC appsys.usp_AppErrorLog @ErrProc=usp_'+@tablenameNoPrefix+'_sel')
	INSERT @tmpt(linetxt) VALUES ('')
	INSERT @tmpt(linetxt) VALUES ('END CATCH')
	INSERT @tmpt(linetxt) VALUES ('')
	INSERT @tmpt(linetxt) VALUES ('END')
	INSERT @tmpt(linetxt) VALUES ('')
	INSERT @tmpt(linetxt) VALUES ('GO')


	SELECT linetxt AS '--PROCEDURE--' FROM @tmpt

END TRY
BEGIN CATCH
    EXEC appsys.usp_AppErrorLog @ErrProc='usp_sys_bldsp_sel'
END CATCH

CLOSEUP:
IF @ErrNum <> 0

RETURN @ErrNum
END

GO
/****** Object:  StoredProcedure [appsys].[usp_sys_bldsp_upd]    Script Date: 9/1/2020 1:10:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE  PROCEDURE [appsys].[usp_sys_bldsp_upd]
(
@tablename sysname
)
AS
/*Debug
SET NOCOUNT ON
DECLARE @tablename sysname
SELECT @tablename='tbl_edutask'
--*/
BEGIN
SET NOCOUNT ON
DECLARE @tmpt TABLE (linenum int IDENTITY(1,1) PRIMARY KEY ,linetxt varchar(1000))
DECLARE @stmp varchar(4000),@stmp2 varchar(4000),@linenum int,@stindent varchar(10)
DECLARE @tblPK table (rid int identity(1,1), Column_Name sysname)
DECLARE @tableNameNoPrefix sysname,@schema sysname,@tableNameWSchema sysname
DECLARE @maxcnt int, @cnt int
DECLARE @ErrNum int
SELECT @ErrNum=0

SELECT @cnt=0,@maxcnt=0

BEGIN TRY
	SELECT @tablename=replace(replace(@tablename,'[',''),']','')

	IF @tablename like '%.%' 
		SELECT @tableNameWSchema=@tablename,
			   @schema=left(@tablename,charindex('.',@tablename)-1),
			   @tablename=right(@tablename,len(@tablename)-charindex('.',@tablename))
	ELSE
		SELECT @schema='dbo',
				@tableNameWSchema='dbo.'+@tablename

	SELECT @cnt=CHARINDEX('tbl_ref_', @tablename),@maxcnt=CHARINDEX('tbl_', @tablename)
	-- if @cnt=1
	-- 	SELECT @tablenameNoPrefix=right(@tablename,len(@tablename)-8)
	-- else 
	IF @maxcnt=1
		SELECT @tablenameNoPrefix=right(@tablename,len(@tablename)-4)
	ELSE SELECT @tablenameNoPrefix=@tablename


	SET @stmp='CREATE PROCEDURE '+ @schema +'.usp_'+@tablenameNoPrefix+'_upd ('
	SET @stindent=CHAR(9)+CHAR(9)

	INSERT @tmpt(linetxt) VALUES (@stmp)


	INSERT @tmpt(linetxt) 
	SELECT @stindent+declaretxtupd+',' 
	FROM  dbo.ufn_sys_TableFlds(@schema,@tablename)
	--where fldname  not in ('CreateDate','CreateBy','ModifyDate','ModifyBy')
	where fldname  not in ('CreateDate','CreateEntid','ModifyDate','ModifyEntId','CreateBy','ModifyBy')
	ORDER by colorder

	INSERT @tmpt(linetxt) 
	SELECT @stindent+ case when fldname ='CreateEntid' then '@UserEntID int )' 
				else '@UserName varchar(20) )' end
	FROM  dbo.ufn_sys_TableFlds(@schema,@tablename)
	where fldname  in ('CreateEntid','CreateBy')


	SELECT @linenum=MAX(linenum) FROM @tmpt

	UPDATE @tmpt
	SET linetxt=replace (linetxt,',',')')
	WHERE linenum=@linenum

	--insert comment
	INSERT @tmpt(linetxt)
	select '/*'
		union all
		select 'Purpose: ' + 'Update data in '+@tableNameWSchema
		union all
		select 'Notes:' 
		union all
		select 'Usage: ' 
		union all
		select 'Revisions:'
		union all
		select 'Date       Developer Name   Purpose'
		union all
		select '---------- ---------------- ---------------------------------------------------'
		union all
		select convert(char(10), getdate(), 101) + ' ' + 'System Generated' + ' '+ 'Original Creation'
		union all
		select '*/'
		union all
		select '/*debug'
		union all
		select '*/'


	INSERT @tmpt(linetxt) VALUES ('AS')
	INSERT @tmpt(linetxt) VALUES ('BEGIN')
	INSERT @tmpt(linetxt) VALUES ('SET NOCOUNT ON')
	INSERT @tmpt(linetxt) VALUES ('DECLARE @KDATE datetime, @KNUM integer,@KSTR varchar(2)')
	INSERT @tmpt(linetxt) VALUES ('')
	INSERT @tmpt(linetxt) VALUES ('SELECT @KDATE=''1901-01-01'',@KNUM=-1,@KSTR=''~''')
	INSERT @tmpt(linetxt) VALUES ('')
	INSERT @tmpt(linetxt) VALUES ('BEGIN TRY')
	INSERT @tmpt(linetxt) VALUES ('	--Initialization, Validation block')
	INSERT @tmpt(linetxt) VALUES ('	--RAISERROR(''Invalid data'',16,1)')
	INSERT @tmpt(linetxt) VALUES ('')
	INSERT @tmpt(linetxt) VALUES ('	BEGIN TRAN')
	INSERT @tmpt(linetxt) VALUES ('')
	INSERT @tmpt(linetxt) VALUES ('	UPDATE '++@tableNameWSchema)
	INSERT @tmpt(linetxt) VALUES ('		SET ')

	INSERT @tmpt(linetxt) 
	SELECT @stindent+dbo.fn_sys_Dev_BldUpdSet(datatype,fldname)
	FROM  dbo.ufn_sys_TableFlds(@schema,@tablename)
	--where fldname  not in ('CreateDate','CreateBy','ModifyDate','ModifyBy')
	where fldname  not in ('CreateDate','CreateEntId','CreateBy')
	and isprimarykey=0
	ORDER by colorder

	SELECT @linenum=MAX(linenum) FROM @tmpt
	UPDATE @tmpt
	SET linetxt=SUBSTRING(linetxt,1,LEN(linetxt)-1)
	WHERE linenum=@linenum

	--get the primary key
	insert into @tblPK(Column_name)
	select fldname
	FROM  dbo.ufn_sys_TableFlds(@schema,@tablename)
	where isprimarykey=1
	order by colorder

	select @cnt=@@rowcount

	--tbe table does not have primary key, can not generate trigger
	if @cnt=0 
		raiserror ('tbe table does not have primary key, can not generate procedure',16,1)

	select @stmp='		WHERE ',@cnt=1,@maxcnt=max(rid) from @tblPK 
	while @cnt<=@maxcnt 
	begin
		select @stmp=@stmp+ Column_Name+'=@'+Column_Name from @tblPK where rid=@cnt
		INSERT @tmpt(linetxt) VALUES (@stmp)
		select @stmp='		AND ', @cnt=@cnt+1
	end

	--INSERT @tmpt(linetxt) VALUES ('WHERE @key=key')

	INSERT @tmpt(linetxt) VALUES ('	IF XACT_STATE()=1')
	INSERT @tmpt(linetxt) VALUES ('		COMMIT TRAN')
	INSERT @tmpt(linetxt) VALUES ('END TRY')
	INSERT @tmpt(linetxt) VALUES ('BEGIN CATCH')
	INSERT @tmpt(linetxt) VALUES ('	IF XACT_STATE()<>0')
	INSERT @tmpt(linetxt) VALUES ('		ROLLBACK TRAN ')
	INSERT @tmpt(linetxt) VALUES ('')
	INSERT @tmpt(linetxt) VALUES ('	    EXEC appsys.usp_AppErrorLog @ErrProc=usp_'+@tablenameNoPrefix+'_upd')
	INSERT @tmpt(linetxt) VALUES ('')
	INSERT @tmpt(linetxt) VALUES ('END CATCH')
	INSERT @tmpt(linetxt) VALUES ('')
	INSERT @tmpt(linetxt) VALUES ('END')
	INSERT @tmpt(linetxt) VALUES ('')
	INSERT @tmpt(linetxt) VALUES ('GO')

	SELECT linetxt AS '--PROCEDURE--' FROM @tmpt

END TRY
BEGIN CATCH
    EXEC appsys.usp_AppErrorLog @ErrProc='usp_sys_bldsp_upd'
END CATCH

CLOSEUP:
IF @ErrNum <> 0

RETURN @ErrNum
END

GO
/****** Object:  StoredProcedure [appsys].[usp_sys_bldsp_upd_batch]    Script Date: 9/1/2020 1:10:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE  PROCEDURE [appsys].[usp_sys_bldsp_upd_batch] 
AS 
/*debug
EXEC appsys.usp_sys_bldsp_upd_batch
*/
BEGIN
set nocount on
DECLARE @tbltable table (rid int identity(1,1),tablename sysname)
DECLARE @cnt int, @cntmax int
DECLARE @tblname varchar(100)


INSERT INTO @tbltable(tablename)
SELECT s.name+'.'+t.name 
FROM sys.tables t
INNER JOIN sys.schemas s ON t.schema_id=s.schema_id
WHERE t.type='u' AND t.name like 'tbl_%' 

SELECT @cnt=1, @cntmax=max(rid) FROM @tbltable
WHILE @cnt<=@cntmax
BEGIN
	SELECT @tblname=tablename FROM @tbltable where rid=@cnt
	EXEC appsys.usp_sys_bldsp_upd @tablename=@tblname
	set @cnt=@cnt+1
	SELECT  'go'
END

end

GO
/****** Object:  StoredProcedure [appsys].[usp_sys_bldtbl]    Script Date: 9/1/2020 1:10:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [appsys].[usp_sys_bldtbl]
AS
/*Debug
EXEC appsys.usp_sys_bldtbl 
*/
BEGIN
SET NOCOUNT ON
DECLARE @tmpt TABLE (linenum int IDENTITY(1,1) PRIMARY KEY ,linetxt varchar(1000))
DECLARE @stmp varchar(4000),@stmp2 varchar(4000),@linenum int,@stindent varchar(10)
DECLARE @tblPK table (rid int identity(1,1), Column_Name sysname)
DECLARE @tableNameNoPrefix sysname,@schema sysname,@tableNameWSchema sysname
DECLARE @maxcnt int, @cnt int

SELECT @cnt=0,@maxcnt=0

BEGIN TRY
	
	SET @stmp='CREATE TABLE dbo.tbl_tablename ('
	SET @stindent=CHAR(9)+CHAR(9)

	INSERT @tmpt(linetxt) VALUES (@stmp)
	INSERT @tmpt(linetxt) VALUES ('[TblID] INT IDENTITY(1,1) NOT NULL PRIMARY KEY,')
	INSERT @tmpt(linetxt) VALUES ('[CreateEntid] INT NOT NULL,')
	INSERT @tmpt(linetxt) VALUES ('[CreateDate] DATETIME NOT NULL DEFAULT (getdate()),')
	INSERT @tmpt(linetxt) VALUES ('[ModifyEntid] INT NOT NULL,')
	INSERT @tmpt(linetxt) VALUES ('[ModifyDate] DATETIME NOT NULL  DEFAULT (getdate()))')
	INSERT @tmpt(linetxt) VALUES ('')
	INSERT @tmpt(linetxt) VALUES ('GO')

	SELECT linetxt AS '--TABLE--' FROM @tmpt

END TRY
BEGIN CATCH
    EXEC appsys.usp_AppErrorLog @ErrProc='usp_sys_bldtbl'
END CATCH


END

GO
/****** Object:  StoredProcedure [appsys].[usp_sys_bldtrg_upd]    Script Date: 9/1/2020 1:10:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [appsys].[usp_sys_bldtrg_upd]
(
 @tablename sysname,
 @owner sysname
)
AS
BEGIN
/*Debug
--*/
SET NOCOUNT ON
DECLARE @tmpt TABLE (linenum int IDENTITY(1,1) PRIMARY KEY ,linetxt varchar(1000))
DECLARE @stmp varchar(4000),@stmp2 varchar(4000),@linenum int,@stindent varchar(10)
DECLARE @maxcnt int, @cnt int
DECLARE @tblPK table (rid int identity(1,1), Column_Name sysname)
DECLARE @tableNameNoPrefix sysname
DECLARE @ErrNum int
SELECT @ErrNum=0

BEGIN TRY

	SELECT @cnt=CHARINDEX('tbl_ref_', @tablename),@maxcnt=CHARINDEX('tbl_', @tablename)
	if @cnt=1
		SELECT @tablenameNoPrefix=right(@tablename,len(@tablename)-8)
	else if @maxcnt=1
		SELECT @tablenameNoPrefix=right(@tablename,len(@tablename)-4)
	else SELECT @tablenameNoPrefix=@tablename


	SET @stmp='CREATE TRIGGER trgu_'+@tablenameNoPrefix
	INSERT @tmpt(linetxt) VALUES (@stmp)
	SET @stmp='ON '+@owner+'.'+@tablename
	INSERT @tmpt(linetxt) VALUES (@stmp)

	INSERT @tmpt(linetxt) VALUES ('FOR UPDATE')
	INSERT @tmpt(linetxt) VALUES ('AS')
	INSERT @tmpt(linetxt) VALUES ('BEGIN')
	INSERT @tmpt(linetxt) VALUES ('SET NOCOUNT ON')
	INSERT @tmpt(linetxt) VALUES ('')
	INSERT @tmpt(linetxt) VALUES ('BEGIN TRY')
	INSERT @tmpt(linetxt) VALUES ('	--Initialization, Validation block')
	INSERT @tmpt(linetxt) VALUES ('	--RAISERROR(''Invalid data'',16,1)')
	INSERT @tmpt(linetxt) VALUES ('')
	INSERT @tmpt(linetxt) VALUES ('	IF NOT UPDATE(ModifyBy)')
	INSERT @tmpt(linetxt) VALUES ('	BEGIN')
	INSERT @tmpt(linetxt) VALUES ('		UPDATE '+@tablename)
	INSERT @tmpt(linetxt) VALUES ('		SET ModifyBy=suser_sname(),')
	INSERT @tmpt(linetxt) VALUES ('			 ModifyDate=getdate() ')
	INSERT @tmpt(linetxt) VALUES ('		FROM ' + @tablename +' t, inserted i')

	--get the primary key
	INSERT INTO @tblPK(Column_name)
	SELECT column_name FROM INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE cc
	inner join INFORMATION_SCHEMA.TABLE_CONSTRAINTS tc
	on tc.TABLE_NAME=cc.TABLE_NAME and tc.TABLE_SCHEMA=cc.TABLE_SCHEMA and tc.CONSTRAINT_NAME=cc.CONSTRAINT_NAME
	where tc.TABLE_NAME=@tableName and tc.TABLE_SCHEMA=@owner
	and tc.CONSTRAINT_TYPE='PRIMARY KEY'

	select @cnt=@@rowcount
	
	--the table does not have primary key, can not generate trigger
	if @cnt=0 
		raiserror ('tbe table does not have primary key, can not generate trigger',16,1)

	select @stmp='		WHERE ',@cnt=1,@maxcnt=max(rid) from @tblPK 
	while @cnt<=@maxcnt 
	begin
		select @stmp=@stmp+ 't.' +Column_Name+'=i.'+Column_Name from @tblPK where rid=@cnt
		INSERT @tmpt(linetxt) VALUES (@stmp)
		select @stmp='  AND ', @cnt=@cnt+1
	end
	INSERT @tmpt(linetxt) VALUES ('	END')
	INSERT @tmpt(linetxt) VALUES ('')
	INSERT @tmpt(linetxt) VALUES ('END TRY')
	INSERT @tmpt(linetxt) VALUES ('BEGIN CATCH')
	INSERT @tmpt(linetxt) VALUES ('	IF XACT_STATE()<>0')
	INSERT @tmpt(linetxt) VALUES ('		ROLLBACK TRAN ')
	INSERT @tmpt(linetxt) VALUES ('')
	INSERT @tmpt(linetxt) VALUES ('	    EXEC appsys.usp_AppErrorLog @ErrProc=trgu_'+@tablenameNoPrefix)
	INSERT @tmpt(linetxt) VALUES ('')
	INSERT @tmpt(linetxt) VALUES ('END CATCH')
	INSERT @tmpt(linetxt) VALUES ('')
	INSERT @tmpt(linetxt) VALUES ('END')
	INSERT @tmpt(linetxt) VALUES ('GO')

	SELECT linetxt AS '--TRIGGER FOR UPDATE--' FROM @tmpt

END TRY
BEGIN CATCH
EXEC appsys.usp_AppErrorLog @ErrProc = 'usp_sys_bldtrg_upd'
END CATCH

CLOSEUP:
IF @ErrNum <> 0

RETURN @ErrNum
END

GO
/****** Object:  StoredProcedure [appsys].[usp_sys_bldtrg_upd_batch]    Script Date: 9/1/2020 1:10:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [appsys].[usp_sys_bldtrg_upd_batch] 
AS 
/*debug
EXEC appsys.usp_sys_bldtrg_upd_batch
SELECT * FROM appsys.tbl_AppErrorLog
*/
BEGIN
SET NOCOUNT ON
DECLARE @tbltable table (rid int identity(1,1),tablename sysname, ownername sysname)
DECLARE @cnt int, @cntmax int
DECLARE @tblname varchar(100), @ownername varchar(100)


INSERT INTO @tbltable(tablename, ownername)
SELECT t.name , s.name
FROM sys.tables t
INNER JOIN sys.schemas s on t.schema_id=s.schema_id
WHERE t.type='u' and t.name like 'tbl_%' 

SELECT @cnt=1, @cntmax=max(rid) FROM @tbltable
WHILE @cnt<=@cntmax
BEGIN
	SELECT @tblname=tablename FROM @tbltable WHERE rid=@cnt
	SELECT @ownername=ownername FROM @tbltable WHERE rid=@cnt
	EXEC appsys.usp_sys_bldtrg_upd @tablename=@tblname,@owner=@ownername
	SET @cnt=@cnt+1
	SELECT 'go'
END

END

GO
/****** Object:  StoredProcedure [appsys].[usp_sys_bldvw]    Script Date: 9/1/2020 1:10:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [appsys].[usp_sys_bldvw]
(@tablename sysname,
@owner sysname)
AS
BEGIN
/*Debug
DECLARE @tablename sysname
SELECT @tablename='tbl_edutask'
[appsys].[usp_sys_bldvw] 'app.tblsite','appah'
--*/
SET NOCOUNT ON
DECLARE @tmpt TABLE (linenum int IDENTITY(1,1) PRIMARY KEY ,linetxt varchar(8000))
DECLARE @stmp varchar(8000),@stmp2 varchar(8000),@linenum int,@stindent varchar(10)
DECLARE @tblPK table (rid int identity(1,1), Column_Name sysname)
DECLARE @tableNameNoPrefix sysname,@schema sysname,@tableNameWSchema sysname
DECLARE @maxcnt int, @cnt int
DECLARE @ErrNum int

SELECT @ErrNum=0
SELECT @cnt=0,@maxcnt=0


BEGIN TRY
	SELECT @tablename=replace(replace(@tablename,'[',''),']','')

	IF @tablename like '%.%' 
		SELECT @tableNameWSchema=@tablename,
			   @schema=left(@tablename,charindex('.',@tablename)-1),
			   @tablename=right(@tablename,len(@tablename)-charindex('.',@tablename))
	ELSE 
		SELECT @schema='dbo',
				@tableNameWSchema='dbo.'+@tablename

	SELECT @cnt=CHARINDEX('tbl_ref_', @tablename),@maxcnt=CHARINDEX('tbl_', @tablename)
	-- if @cnt=1
	-- 	SELECT @tablenameNoPrefix=right(@tablename,len(@tablename)-8)
	-- else 
	IF @maxcnt=1
		SELECT @tablenameNoPrefix=right(@tablename,len(@tablename)-4)
	ELSE SELECT @tablenameNoPrefix=@tablename

	--select @tablename,@schema,@tableNameWSchema,@tablenameNoPrefix

	SET @stmp='CREATE VIEW '+ @owner +'.vw_ah_'+@tablenameNoPrefix
	SET @stindent=CHAR(9)+CHAR(9)

	INSERT @tmpt(linetxt) VALUES (@stmp)

	--insert comment
	INSERT @tmpt(linetxt)
		select '/*'
		union all
		select 'Purpose: ' + 'Select data from '+ @tableNameWSchema
		union all
		select 'Notes:' 
		union all
		select 'Usage: ' 
		union all
		select 'Revisions:'
		union all
		select 'Date       Developer Name   Purpose'
		union all
		select '---------- ---------------- ---------------------------------------------------'
		union all
		select convert(char(10), getdate(), 101) + ' ' + 'System Generated' + ' '+ 'Original Creation'
		union all
		select '*/'
		union all
		select '/*debug'
		union all
		select '*/'

	INSERT @tmpt(linetxt) VALUES ('AS')
	INSERT @tmpt(linetxt) VALUES ('	SELECT ')
	
	--get all of the fileds
	SET @stmp2=''

	SELECT @stmp2=@stmp2+'['+fldname+'] ,' 		
	FROM  dbo.ufn_sys_TableFlds(@schema,@tablename)
	ORDER by colorder

	SELECT @stmp2=@stindent+LEFT(@stmp2,Len(@stmp2)-2)

	INSERT @tmpt(linetxt) VALUES (@stmp2)
	 INSERT @tmpt(linetxt) VALUES ('		FROM '+ @tableNameWSchema)

	INSERT @tmpt(linetxt) VALUES ('')
	INSERT @tmpt(linetxt) VALUES ('GO')


	SELECT linetxt AS '--VIEW--' FROM @tmpt

END TRY
BEGIN CATCH
    EXEC appsys.usp_AppErrorLog @ErrProc='usp_sys_bldvw'
END CATCH

CLOSEUP:
IF @ErrNum <> 0

RETURN @ErrNum
END

GO
/****** Object:  StoredProcedure [appsys].[usp_sys_bldvw_batch]    Script Date: 9/1/2020 1:10:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [appsys].[usp_sys_bldvw_batch] (
@owner sysname)
AS 
/*debug
EXEC appsys.[usp_sys_bldvw_batch] @owner='appah'
SELECT * FROM appsys.tbl_AppErrorLog
*/
BEGIN
SET NOCOUNT ON
DECLARE @tbltable table (rid int identity(1,1),tablename sysname, ownername sysname)
DECLARE @cnt int, @cntmax int
DECLARE @tblname varchar(100), @ownername varchar(100)


INSERT INTO @tbltable(tablename, ownername)
SELECT t.name , s.name
FROM sys.tables t
INNER JOIN sys.schemas s on t.schema_id=s.schema_id
WHERE t.type='u' and t.name like 'tbl_%' 

SELECT @cnt=1, @cntmax=max(rid) FROM @tbltable
WHILE @cnt<=@cntmax
BEGIN
	SELECT @tblname=ownername+'.'+tablename FROM @tbltable WHERE rid=@cnt

	--SELECT @ownername=ownername FROM @tbltable WHERE rid=@cnt
	EXEC appsys.usp_sys_bldvw @tablename=@tblname,@owner=@owner
	SET @cnt=@cnt+1
	
END

END

GO
/****** Object:  StoredProcedure [dbadmin].[usp_sys_validate_grade]    Script Date: 9/1/2020 1:10:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbadmin].[usp_sys_validate_grade]
as

if object_id('temp..#temp1') is not null drop table #temp1
if object_id('temp..#temp1') is not null drop table #temp2

select enrollmentid,class_grade 
into #temp1
from [dbo].[users_students_enrollment]
--where isnull(class_grade,'')<>''

select enrollmentID,grade_official
into #temp2
 from [dbo].[users_students_enrollment_grades] g1
 where not exists(
	select 1
	from [dbo].[users_students_enrollment_grades] g2
	where g1.enrollmentID=g2.enrollmentID
	and g1.date_submitted<g2.date_submitted)

--32 enrollments with different grade (31 missing in users_students_enrollment, 1 with different grade)
select * 
from #temp2 t2
inner join #temp1 t1 on t1.enrollmentID=t2.enrollmentID
where isnull(t1.class_grade,'')<>isnull(t2.grade_official,'') --32

--grade not match
select * from users_students_enrollment where enrollmentID=45019
select * from [users_students_enrollment_grades] where enrollmentID=45019
select * from eh_responses where student_enrollmentID=45019
select * from eh_responses_answers where responseID=432806
select * from users where userid=93385

--grade missing in users_students_enrollment
select * from users_students_enrollment where enrollmentID=38208
select * from [users_students_enrollment_grades] where enrollmentID=38208
select * from eh_responses where student_enrollmentID=38208
select * from eh_responses_answers where responseID=38208
select * from i_clerkships where clerkshipid=1611



--enrollment in users_students_enrollment_grades but not in users_students_enrollment
select * 
from #temp2 t2
where not exists(
	select 1
	from #temp1 t1 
	where t1.enrollmentID=t2.enrollmentID)
order by enrollmentID--6

--no record in users_students_enrollment or eh_responses
select * from users_students_enrollment where enrollmentID=37511
select * from [users_students_enrollment_grades] where enrollmentID=37511
select * from eh_responses where student_enrollmentID=37511

--no record in users_students_enrollment, completed status in eh_responses
select * from users_students_enrollment where enrollmentID=39751
select * from [users_students_enrollment_grades] where enrollmentID=39751
select * from eh_responses where student_enrollmentID=39751

--no record in users_students_enrollment or eh_responses
select * from users_students_enrollment where enrollmentID=40504
select * from [users_students_enrollment_grades] where enrollmentID=40504
select * from eh_responses where student_enrollmentID=40504

--no record in users_students_enrollment or eh_responses
select * from users_students_enrollment where enrollmentID=40505
select * from [users_students_enrollment_grades] where enrollmentID=40505
select * from eh_responses where student_enrollmentID=40505

--NULL grade, no record in users_students_enrollment or eh_responses
select * from users_students_enrollment where enrollmentID=44360
select * from [users_students_enrollment_grades] where enrollmentID=44360
select * from eh_responses where student_enrollmentID=44360

--NULL grade, no record in users_students_enrollment or eh_responses
select * from users_students_enrollment where enrollmentID=44363
select * from [users_students_enrollment_grades] where enrollmentID=44363
select * from eh_responses where student_enrollmentID=44363

--in users_students_enrollment but not in users_students_enrollment_grades
select * 
from  #temp1 t1 
where not exists(
	select 1
	from #temp2 t2
	where t1.enrollmentID=t2.enrollmentID)
and isnull(t1.class_grade,'')<>''
order by enrollmentID--1

--no record in users_students_enrollment_grades or eh_responses, maybe invalid records as userid is 0
select * from users_students_enrollment where enrollmentID=47145
select * from [users_students_enrollment_grades] where enrollmentID=47145
select * from eh_responses where student_enrollmentID=47145
GO
/****** Object:  StoredProcedure [dbo].[usp_EvalPDF_CheckOneResponseID]    Script Date: 9/1/2020 1:10:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




create PROCEDURE [dbo].[usp_EvalPDF_CheckOneResponseID] @ResponseID numeric
AS
SELECT        responseID, student_lastname + ' ' + student_firstname AS student, clerkship_name, Evaluation_title, evaluator_lastname + ', ' + evaluator_firstname AS evaluator, item_order, question, option_value, 
                         textresponse, issue_date, completion_date, rotation_start_date, rotation_end_date, option_title
FROM            vw_completed_evaluations
WHERE        (responseID = @ResponseID)
order by item_order
GO
/****** Object:  StoredProcedure [dbo].[usp_sys_fix_user_login]    Script Date: 9/1/2020 1:10:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



create procedure [dbo].[usp_sys_fix_user_login]
/*
purpose: run to auto fix user login
Notes:
Usage: 
Revisions:
Date       Developer Name   Purpose
---------- ---------------- ---------------------------------------------------
09/29/2006 CH Original creation
*/
/*debug
*/
AS
BEGIN
SET NOCOUNT ON
DECLARE @ERR int,@ERRMSG VARCHAR(200)
SELECT @ERR=0,@ERRMSG=''

declare @tblusername table (rid int identity(1,1), username nvarchar(100))
declare @sql nvarchar(1000),@username nvarchar(100)
declare @rid int,@maxrid int
insert into @tblUsername (username)
select name from sysusers where islogin=1 and uid>2

select @rid=min(rid),@maxrid=max(rid) from @tblUsername

while @rid<=@maxrid
begin
	select @username=username from @tblusername where rid=@rid
	select @sql= 'sp_change_users_login @Action =  ''Auto_Fix'' , @UserNamePattern =  ''' + @username + ''''

	select @sql

	exec sp_executesql @sql

	SELECT @ERR=@@ERROR,@ERRMSG=''
	IF  @ERR <> 0 GOTO CLOSEUP
	set @rid=@rid+1
end


CLOSEUP:
IF @ERR <> 0 RAISERROR ('Error #%d : %s',16, 1, @ERR, @ERRMSG)
RETURN @ERR
END



GO
/****** Object:  StoredProcedure [dbo].[usp_vw_MedHub_DutyHoursViolations_ByDateRange]    Script Date: 9/1/2020 1:10:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO








CREATE PROCEDURE [dbo].[usp_vw_MedHub_DutyHoursViolations_ByDateRange]
	@StartDate datetime,
	@EndDate datetime
AS
BEGIN
	SET NOCOUNT ON;

SELECT        cs.clerkship_name, s.site_shortname, eqoo.option_title, ans.textresponse, resp.issue_date, resp.completion_date, evaluator.lastname AS evaluator_lastname, 
                         evaluator.firstname AS evaluator_firstname, ei.question,ret.Evaluation_Type, eval.title AS Evaluation_title,  resp.rotation_start_date, resp.rotation_end_date, ans.responseID
FROM            eh_evals AS eval INNER JOIN
                         eh_evals_items AS ei ON ei.evaluationID = eval.evaluationID LEFT OUTER JOIN
                         eh_evals_questions_optionsets AS eqo ON eqo.optionsetID = ei.question_optionsetID INNER JOIN
                         eh_responses AS resp ON resp.evaluationID = eval.evaluationID INNER JOIN
                         users AS evaluator ON evaluator.userID = resp.evaluator_userID LEFT OUTER JOIN
                         vw_user_employeeID AS eid_evaluator ON eid_evaluator.userid = evaluator.userID INNER JOIN
                         tbl_ref_evaluation_type AS ret ON ret.Evaluation_Type_ID_MedHub = resp.eval_type LEFT OUTER JOIN
                         eh_responses_answers AS ans ON ans.responseID = resp.responseID AND ans.itemID = ei.itemID LEFT OUTER JOIN
                         eh_evals_questions_optionsets_options AS eqoo ON eqoo.optionID = ans.optionID LEFT OUTER JOIN
                         i_clerkships AS cs ON cs.clerkshipID = resp.clerkshipID LEFT OUTER JOIN
                         i_sites AS s ON s.siteID = cs.primary_siteID
WHERE        (ei.itemID = 74464) AND (resp.issue_date BETWEEN CONVERT(DATETIME, @StartDate, 102) AND CONVERT(DATETIME, @EndDate, 102)) AND (eqoo.option_title = 'no') AND 
                         (NOT (cs.clerkship_name LIKE '%template%'))
ORDER BY cs.clerkship_name, s.site_shortname

END







GO
/****** Object:  StoredProcedure [dbo].[usp_zample]    Script Date: 9/1/2020 1:10:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[usp_zample]
/*
purpose: stored procedure template
Notes:
Usage: 
Revisions:
Date       Developer Name   Purpose
---------- ---------------- ---------------------------------------------------
01/23/2007 system generated Original creation
10/25/2007 CCC				Modified to log errors to a table.
*/
/*debug
EXEC [usp_zample]
*/
AS
BEGIN
SET NOCOUNT ON

DECLARE @ErrNum int

BEGIN TRY
	--create table #tmptbl (rowid int primary key, rowvalue varchar(20))

	--Initialization, Validation block
	--Use RAISERROR inside a TRY block to cause execution to jump to the associated CATCH block
	--RAISERROR('Invalid data',16,1)

	--Data modification block
	--Start the transaction before the data modification statement
	BEGIN TRAN

	--The error occurs in sub_Stored Procedure will be caused by the TRY..CATCH
	--EXEC usp_SP_Sub
	
 	IF XACT_STATE()=1
		COMMIT TRAN

END TRY
BEGIN CATCH

	IF XACT_STATE()<>0
		ROLLBACK TRAN 
	EXEC AppSys.usp_AppErrorLog_ins
	SELECT @ErrNum=ERROR_NUMBER()
END CATCH

CLOSEUP: 
--clean up block
--drop table #tmptbl


RETURN @ErrNum
END














GO
/****** Object:  StoredProcedure [dbo].[usp_zample_Main]    Script Date: 9/1/2020 1:10:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[usp_zample_Main]
/*
Purpose:	Data migration
Notes:		Need to assign the @ErrProcExt variable as the current procedure name
Usage: 
Revisions:
Date       Developer Name   Purpose
---------- ---------------- ---------------------------------------------------
06/23/2007 system generated Original creation
10/25/2007 CCC				Modified to log errors to table.
*/
/*debug
EXEC [usp_zample_Main]
*/
AS
BEGIN
SET NOCOUNT ON
--SET XACT_ABORT ON

/*
 Need to assign the @ErrProcExt variable as the current procedure name
 This will allow the main procedure name to be logged and raised if an 
  error occurs
*/
DECLARE @ErrProcExt varchar(200)
SELECT @ErrProcExt = 'usp_zample_Main'

BEGIN TRY

	print '0 --Try '

	create table #tmptbl (rowid int primary key, rowvalue varchar(20))
	
	--Select statement	
	--SELECT 1/0

	--print '1 -- validation raiseerror'
	--Validation block
	--Use RAISERROR inside a TRY block to cause execution to jump to the associated CATCH block
	--RAISERROR('Invalid data',16,1)

	--Start the transaction before the data modification statement
	BEGIN TRAN

	PRINT '2 -- Sub_SP'
	--The raise error occurs in sub_Stored Procedure will be caused by the TRY..CATCH
	-- The @err2 can not be caught because the raiserror already exists the Sub-SP
	EXEC dbo.usp_zample_Sub
	
	PRINT '3 -- test nested Try..Catch in Try Block'
	--It is not a good idea to have nested TRY..CATCH inside TRY block
	--	BEGIN TRY
	--		SELECT 1/0
	--	END TRY
	--	BEGIN CATCH
	--		select 1
	--		SELECT @ErrNum=ERROR_NUMBER(),
	--			@ErrSeverity=ERROR_SEVERITY(),
	--			@ErrState=ERROR_STATE(),
	--			@ErrLine=ERROR_LINE(),
	--			@ErrProc=ERROR_PROCEDURE(),
	--			@ErrMsg=ERROR_MESSAGE()
	--	
	--	END CATCH

	
	PRINT '4 -- DML Statement'
	
	INSERT INTO #tmptbl (rowid , rowvalue )
	values (1,'cat')
	
	insert into #tmptbl (rowid , rowvalue )
	values (1,'dog')

	
	print '5 -- commit tran'
	--Both the XACT_STATE and @@TRANCOUNT functions can be used to detect whether the current request has an active user transaction. 
	--@@TRANCOUNT cannot be used to determine whether that transaction has been classified as an uncommittable transaction. 
	--XACT_STATE cannot be used to determine whether there are nested transactions.

	--XACT_STATE()=1: The current request has an active user transaction.
	--XACT_STATE()=0:There is no active user transaction for the current request.
	--XACT_STATE()=-1:The current request has an active user transaction, but an error has occurred that has caused the transaction to be classified as an uncommittable transaction. 

 select XACT_STATE()
	--IF @@TRANCOUNT>0 
	IF XACT_STATE()=1
		COMMIT TRAN

END TRY
BEGIN CATCH
	print '10 -- Catch'
 select XACT_STATE() as Xact_State,@@trancount as Trancount
--	select @err2
	-- you may have nested TRY..CATCH inside CATCH block
	--	BEGIN TRY
	--		SELECT 1/0
	--	END TRY
	--	BEGIN CATCH
	--		print 'error 1'
	--	END CATCH

	print '11 -- rollback'
	--IF @@TRANCOUNT>0 
	--IF XACT_STATE()=-1
	IF XACT_STATE()<>0
		ROLLBACK TRAN 

EXEC AppSys.usp_AppErrorLog @ErrProc=@ErrProcExt
--EXEC AppSys.usp_AppErrorLog_external_ins @ErrProcExt
END CATCH

PRINT '20 -- close up'

closeup: 
drop table #tmptbl

END
















GO
/****** Object:  StoredProcedure [dbo].[usp_zample_Main2]    Script Date: 9/1/2020 1:10:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[usp_zample_Main2]
/*
Purpose: data migration
Notes:		Need to assign the @ErrProcExt variable as the current procedure name
Usage: 
Revisions:
Date       Developer Name   Purpose
---------- ---------------- ---------------------------------------------------
06/23/2007 system generated Original creation
10/25/2007 CCC				Modified to log errors to table.
*/
/*debug
EXEC [usp_zample_Main]
*/
AS
BEGIN
SET NOCOUNT ON
--SET XACT_ABORT ON

/*
 Need to assign the @ErrProcExt variable as the current procedure name
 This will allow the main procedure name to be logged and raised if an 
  error occurs
*/
DECLARE @ErrProcExt varchar(200)
SELECT @ErrProcExt = 'usp_zample_Main2'

BEGIN TRY

	print '0 --Try '

	create table #tmptbl (rowid int primary key, rowvalue varchar(20))
	
	--Select statement	
	--SELECT 1/0

	--print '1 -- validation raiseerror'
	--Validation block
	--Use RAISERROR inside a TRY block to cause execution to jump to the associated CATCH block
	--RAISERROR('Invalid data',16,1)

	--Start the transaction before the data modification statement
	BEGIN TRAN

	PRINT '2 -- Sub_SP'
	--The raise error occurs in sub_Stored Procedure will be caused by the TRY..CATCH
	-- The @err2 can not be caught because the raiserror already exists the Sub-SP
	EXEC dbo.usp_zample_Main
	
	PRINT '3 -- test nested Try..Catch in Try Block'
	--It is not a good idea to have nested TRY..CATCH inside TRY block
	--	BEGIN TRY
	--		SELECT 1/0
	--	END TRY
	--	BEGIN CATCH
	--		select 1
	--		SELECT @ErrNum=ERROR_NUMBER(),
	--			@ErrSeverity=ERROR_SEVERITY(),
	--			@ErrState=ERROR_STATE(),
	--			@ErrLine=ERROR_LINE(),
	--			@ErrProc=ERROR_PROCEDURE(),
	--			@ErrMsg=ERROR_MESSAGE()
	--	
	--	END CATCH

	
	PRINT '4 -- DML Statement'
	
	INSERT INTO #tmptbl (rowid , rowvalue )
	values (1,'cat')
	
	insert into #tmptbl (rowid , rowvalue )
	values (1,'dog')

	
	print '5 -- commit tran'
	--Both the XACT_STATE and @@TRANCOUNT functions can be used to detect whether the current request has an active user transaction. 
	--@@TRANCOUNT cannot be used to determine whether that transaction has been classified as an uncommittable transaction. 
	--XACT_STATE cannot be used to determine whether there are nested transactions.

	--XACT_STATE()=1: The current request has an active user transaction.
	--XACT_STATE()=0:There is no active user transaction for the current request.
	--XACT_STATE()=-1:The current request has an active user transaction, but an error has occurred that has caused the transaction to be classified as an uncommittable transaction. 

 select XACT_STATE()
	--IF @@TRANCOUNT>0 
	IF XACT_STATE()=1
		COMMIT TRAN

END TRY
BEGIN CATCH
	print '10 -- Catch'
 select XACT_STATE() as Xact_State,@@trancount as Trancount
--	select @err2
	-- you may have nested TRY..CATCH inside CATCH block
	--	BEGIN TRY
	--		SELECT 1/0
	--	END TRY
	--	BEGIN CATCH
	--		print 'error 1'
	--	END CATCH

	print '11 -- rollback'
	--IF @@TRANCOUNT>0 
	--IF XACT_STATE()=-1
	IF XACT_STATE()<>0
		ROLLBACK TRAN 
EXEC AppSys.usp_AppErrorLog @ErrProc=@ErrProcExt
--EXEC AppSys.usp_AppErrorLog_external_ins @ErrProcExt
END CATCH

PRINT '20 -- close up'

closeup: 
drop table #tmptbl

END


GO
/****** Object:  StoredProcedure [dbo].[usp_zample_Sub]    Script Date: 9/1/2020 1:10:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[usp_zample_Sub]
/*
purpose: error handling
Notes:
Usage: 
Revisions:
Date       Developer Name   Purpose
---------- ---------------- ---------------------------------------------------
06/23/2007 system generated Original creation
10/25/2007 CCC				Modifed to log errors to table.
*/
/*debug
EXEC [usp_zample_Sub]
select * from t1
*/
AS
BEGIN
SET NOCOUNT ON
--SET XACT_ABORT ON
CREATE TABLE #t1 (tid int PRIMARY KEY)
BEGIN TRY
--	SELECT 10/0
--	delete from t2
--	delete from t1
	BEGIN TRAN
	--	SELECT 10/0
	PRINT ' s0  TRY'
		INSERT INTO #t1 VALUES (1)
		INSERT INTO #t1 VALUES (1)
	IF XACT_STATE()=1
		COMMIT TRAN	
END TRY
BEGIN CATCH
	
	PRINT ' s1 Catch'
	select XACT_STATE() as Xact_State,@@trancount as Trancount

	--use XACT_STATE() instead of @@TRANCOUNT because the sub SP will be exits by raiserror instead Return, error number can not be caught by return.
	--IF XACT_STATE()=-1
	--IF @@TRANCOUNT>0 
	IF XACT_STATE()<>0
		ROLLBACK TRAN

	print ' s2 raise error'
	--select * from t1
    EXEC Appsys.usp_AppErrorLog @ErrProc='usp_zample_sub'
	--EXEC AppSys.usp_AppErrorLog_ins
	
END CATCH

CloseUp:
print ' s3 CloseUp'
--drop table #tmp

END





GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mobile friendliness of form (0=undefined, 1=friendly, 2=moderate, 3=unfriendly)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'eh_evals', @level2type=N'COLUMN',@level2name=N'mobile_friendly'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Flag that enables skip logic for a question' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'eh_evals', @level2type=N'COLUMN',@level2name=N'skip_logic'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'0=disabled; 1=show by default; 2=hide by default' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'eh_evals_items', @level2type=N'COLUMN',@level2name=N'skip_display'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Skip Logic - Identifies parent question' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'eh_evals_items', @level2type=N'COLUMN',@level2name=N'skip_itemID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Skip Logic - Identifies options to display/hide child question' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'eh_evals_items', @level2type=N'COLUMN',@level2name=N'skip_optionA'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mobile friendliness of form (0=undefined, 1=friendly, 2=moderate, 3=unfriendly)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'eh_evals_questions_optionsets', @level2type=N'COLUMN',@level2name=N'mobile_friendly'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'1=by student, 2=by service' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'i_clerkships', @level2type=N'COLUMN',@level2name=N'setting_schedule_view'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Show residents/faculty from the GME side' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'i_clerkships', @level2type=N'COLUMN',@level2name=N'setting_schedule_show_gme'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'0=not required, 1=required' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'i_clerkships_groups', @level2type=N'COLUMN',@level2name=N'group_required'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'number of days prior to course start' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'i_clerkships_groups', @level2type=N'COLUMN',@level2name=N'self_enrollment_window_start'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'number of days open after start' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'i_clerkships_groups', @level2type=N'COLUMN',@level2name=N'self_enrollment_window_length'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'automatically approve self enrollment requests' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'i_clerkships_groups', @level2type=N'COLUMN',@level2name=N'self_enrollment_auto_approve'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'1 causes competency questions and overall question to be included in milestone progress reports.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'i_programs', @level2type=N'COLUMN',@level2name=N'setting_milestones_competency_questions'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'require comment for potential violation' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'i_programs', @level2type=N'COLUMN',@level2name=N'violation_required_comment_1_in_7'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'require comment for potential violation' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'i_programs', @level2type=N'COLUMN',@level2name=N'violation_required_comment_80_per_week'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'"1=procedure, 2=diagnosis, 0=both"' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pc_lists_roles', @level2type=N'COLUMN',@level2name=N'role_type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'"1=procedure, 2=diagnosis"' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pc_requirements', @level2type=N'COLUMN',@level2name=N'type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'13 and above – Unused' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tbl_ref_usertype', @level2type=N'COLUMN',@level2name=N'usertype'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'12|Times New Roman,Times,Serif' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'users_residents', @level2type=N'COLUMN',@level2name=N'portfolio_cv_settings'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'"timestamp when resident last confirmed their work preferences"' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'users_residents', @level2type=N'COLUMN',@level2name=N'work_pref_confirmed_at'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'"flag set by cron to inform resident they need to (re)confirm work preferences"' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'users_residents', @level2type=N'COLUMN',@level2name=N'work_pref_required'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'"Training type (ref_residents_types)"' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'users_residents_pg', @level2type=N'COLUMN',@level2name=N'typeID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'"Overrides automatic DGME weighting to allow reimbursement for fellowship training (0=standard; 1=override)"' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'users_residents_pg', @level2type=N'COLUMN',@level2name=N'weight_override'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'"created for the ucsf enrollment sync"' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'users_students_enrollment', @level2type=N'COLUMN',@level2name=N'grade_released'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'"created for ucsf grade sync"' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'users_students_enrollment_grades', @level2type=N'COLUMN',@level2name=N'sync_error'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "eval"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 299
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ei"
            Begin Extent = 
               Top = 6
               Left = 337
               Bottom = 136
               Right = 598
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "eqo"
            Begin Extent = 
               Top = 6
               Left = 636
               Bottom = 136
               Right = 897
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "resp"
            Begin Extent = 
               Top = 6
               Left = 935
               Bottom = 136
               Right = 1196
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "out_evaluator"
            Begin Extent = 
               Top = 138
               Left = 38
               Bottom = 268
               Right = 299
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "evaluatee"
            Begin Extent = 
               Top = 138
               Left = 337
               Bottom = 268
               Right = 598
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "eid_uevaluatee"
            Begin Extent = 
               Top = 138
               Left = 636
               Bottom = 234
               Right = 806
            End
            DisplayFlags = 280
 ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_byoutside_evaluations'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'           TopColumn = 0
         End
         Begin Table = "ret"
            Begin Extent = 
               Top = 138
               Left = 1052
               Bottom = 268
               Right = 1295
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ans"
            Begin Extent = 
               Top = 234
               Left = 636
               Bottom = 364
               Right = 897
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "eqoo"
            Begin Extent = 
               Top = 270
               Left = 38
               Bottom = 400
               Right = 299
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cs"
            Begin Extent = 
               Top = 270
               Left = 935
               Bottom = 400
               Right = 1304
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "s"
            Begin Extent = 
               Top = 270
               Left = 337
               Bottom = 400
               Right = 598
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "p"
            Begin Extent = 
               Top = 402
               Left = 38
               Bottom = 532
               Right = 396
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_byoutside_evaluations'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_byoutside_evaluations'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "eval"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 299
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ei"
            Begin Extent = 
               Top = 138
               Left = 38
               Bottom = 268
               Right = 299
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "eqo"
            Begin Extent = 
               Top = 270
               Left = 38
               Bottom = 400
               Right = 299
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "resp"
            Begin Extent = 
               Top = 402
               Left = 38
               Bottom = 532
               Right = 299
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "evaluator"
            Begin Extent = 
               Top = 534
               Left = 38
               Bottom = 664
               Right = 299
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "evaluatee"
            Begin Extent = 
               Top = 666
               Left = 38
               Bottom = 796
               Right = 299
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "eid_evaluator"
            Begin Extent = 
               Top = 798
               Left = 38
               Bottom = 894
               Right = 208
            End
            DisplayFlags = 280
      ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_evaluations'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'      TopColumn = 0
         End
         Begin Table = "eid_uevaluatee"
            Begin Extent = 
               Top = 798
               Left = 246
               Bottom = 894
               Right = 416
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ret"
            Begin Extent = 
               Top = 894
               Left = 38
               Bottom = 1024
               Right = 281
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ans"
            Begin Extent = 
               Top = 1026
               Left = 38
               Bottom = 1156
               Right = 299
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "eqoo"
            Begin Extent = 
               Top = 1158
               Left = 38
               Bottom = 1288
               Right = 299
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cs"
            Begin Extent = 
               Top = 1290
               Left = 38
               Bottom = 1420
               Right = 407
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "s"
            Begin Extent = 
               Top = 1422
               Left = 38
               Bottom = 1552
               Right = 299
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "p"
            Begin Extent = 
               Top = 1554
               Left = 38
               Bottom = 1684
               Right = 396
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_evaluations'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_evaluations'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "eval"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 299
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ei"
            Begin Extent = 
               Top = 6
               Left = 337
               Bottom = 136
               Right = 598
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "eqo"
            Begin Extent = 
               Top = 6
               Left = 636
               Bottom = 136
               Right = 897
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "resp"
            Begin Extent = 
               Top = 6
               Left = 935
               Bottom = 136
               Right = 1196
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "out_evaluatee"
            Begin Extent = 
               Top = 138
               Left = 38
               Bottom = 268
               Right = 299
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "evaluator"
            Begin Extent = 
               Top = 138
               Left = 337
               Bottom = 268
               Right = 598
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "eid_evaluator"
            Begin Extent = 
               Top = 138
               Left = 636
               Bottom = 234
               Right = 806
            End
            DisplayFlags = 280
  ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_ofoutside_evaluations'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'          TopColumn = 0
         End
         Begin Table = "ret"
            Begin Extent = 
               Top = 138
               Left = 1052
               Bottom = 268
               Right = 1295
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ans"
            Begin Extent = 
               Top = 234
               Left = 636
               Bottom = 364
               Right = 897
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "eqoo"
            Begin Extent = 
               Top = 270
               Left = 38
               Bottom = 400
               Right = 299
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cs"
            Begin Extent = 
               Top = 270
               Left = 935
               Bottom = 400
               Right = 1304
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "s"
            Begin Extent = 
               Top = 270
               Left = 337
               Bottom = 400
               Right = 598
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "p"
            Begin Extent = 
               Top = 402
               Left = 38
               Bottom = 532
               Right = 396
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_ofoutside_evaluations'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_ofoutside_evaluations'
GO
USE [master]
GO
ALTER DATABASE [MedHubSOM] SET  READ_WRITE 
GO
