create or replace PACKAGE ZT_QR AUTHID DEFINER AS

PROCEDURE p_generate_qr_data( p_data varchar2, p_error_correction varchar2, p_qr OUT NOCOPY varchar2, p_matrix_size OUT pls_integer);

PROCEDURE p_qr_debug( p_data varchar2, p_error_correction varchar2, p_debug boolean default true, p_debug_level pls_integer default 1, p_masking_out pls_integer default null,
    p_qr OUT NOCOPY varchar2, p_matrix_size OUT pls_integer);

FUNCTION f_qr_as_html_table( p_data varchar2, p_error_correction varchar2, p_module_size_in_px pls_integer default 8, p_margines boolean default false) RETURN clob;

PROCEDURE p_qr_as_html_table( p_data varchar2, p_error_correction varchar2, p_module_size_in_px pls_integer default 8, p_margines boolean default false);

FUNCTION f_qr_as_bmp( p_data varchar2, p_error_correction varchar2, p_margines varchar2 default 'N') RETURN blob;

FUNCTION f_qr_as_long_raw( p_data varchar2, p_error_correction varchar2, p_margines varchar2 default 'N' ) RETURN long raw;

PROCEDURE p_qr_as_img_tag_base64( p_data varchar2, p_error_correction varchar2, p_image_size_px pls_integer, p_margines varchar2 default 'N' );

FUNCTION f_qr_as_svg( p_data varchar2, p_error_correction varchar2, p_module_size_px pls_integer default 8, p_margines_yn varchar2 default 'N',
    p_module_color varchar2 default 'black', p_background_color varchar2 default 'white', p_module_rounded_px pls_integer default 0) RETURN clob;

PROCEDURE p_qr_as_svg(p_data varchar2, p_error_correction varchar2, p_module_size_px pls_integer default 8, p_margines_yn varchar2 default 'N', p_module_color varchar2 default 'black',
    p_background_color varchar2 default 'white', p_module_rounded_px pls_integer default 0 );

PROCEDURE p_save_file( p_document blob, p_file_name varchar2, p_folder varchar2);
END ZT_QR;
/

