    <style type="text/css">
        .book-display-area {
    min-height: 80vh;
    background: transparent;
    margin: 0px 30px;
    padding: 0px;
    align-items: center;
    justify-content: center;
    display: flex;
}
.book-text {
    color: #fff;
    text-align: center;
}
input#wpforms-106-field_2 {
    margin: auto;
    border-radius: 0px;
    border: 0px;
    padding: 30px 15px;
}
div.wpforms-container-full input[type=submit]:hover, div.wpforms-container-full input[type=submit], div.wpforms-container-full input[type=submit]:not(:hover):not(:active), div.wpforms-container-full button[type=submit]:not(:hover):not(:active), div.wpforms-container-full .wpforms-page-button:not(:hover):not(:active) {
    background-color: #d81e27 !important;
    color: #fff !important;
    font-size: 24px !important;
    font-weight: 400 !important;
    text-transform: uppercase !important;
    padding: 20px 15px 40px !important;
    width: 100% !important;
    max-width: 400px !important;
    border-radius: 0px !important;
    margin-top: 0.5em;
}
div.wpforms-container-full input[type=submit]:hover, div.wpforms-container-full input[type=submit]:active, div.wpforms-container-full button[type=submit]:hover, div.wpforms-container-full button[type=submit]:active, div.wpforms-container-full .wpforms-page-button:hover, div.wpforms-container-full .wpforms-page-button:active {
        background-color: #d81e27 !important;
    color: #000 !important;
    font-size: 24px !important;
    font-weight: 400 !important;
    text-transform: uppercase !important;
    padding: 20px 15px 40px !important;
    width: 100% !important;
    max-width: 400px !important;
    border-radius: 0px !important;
}
div#wpforms-106-field_2-container label {
    display: none;
}
    </style>
    <section class="book-display-area">
        <div class="book-image" style="background-image: url('<?php echo esc_url( $tech_blogging_section_args['tech_blogging_image'] ); ?>')"></div>
        <div class="container">
            <div class="row">
                <div class="col-12 align-self-center justify-content-center">
                    <div class="book-text">
                        <h2 class="mt-0">RedPages Blog</h2>
                        <!-- <a href="<?php echo esc_url( $tech_blogging_section_args['tech_blogging_button_link'] ); ?>" class="btn book-btn default-btn-style">Subscribe</a> -->
                        <?= do_shortcode('[wpforms id="106" title="false"]'); ?>
                    </div>
                </div>
            </div>
        </div>
    </section>