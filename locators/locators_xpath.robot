
*** Variables ***

&{trending}    all_nav_bar=//a//span[text()="All"]
    ...        new_release_nav_bar=//div[contains(text(),"trending")]//parent::li//following-sibling::li/a[contains(text(),"New Releases")]
    ...        title_text=//span[@id="zg_banner_text"]
    ...        cloth_and_access_items=//h2[text()="Hot New Releases in Clothing & Accessories"]//parent::div//parent::div//following-sibling::div[@class="a-row a-carousel-controls a-carousel-row a-carousel-has-buttons"]//li//span/div
    ...        comp_and_access_items=//h2[text()="Hot New Releases in Computers & Accessories"]//parent::div//parent::div//following-sibling::div[@class="a-row a-carousel-controls a-carousel-row a-carousel-has-buttons"]//li//span/div
    ...        add_to_cart_btn=//input[@value="Add to Cart"]

&{login}      signin=//a[@class="a-button-text"]
    ...        email=//input[@type="email"]
    ...        continue_btn=//input[@id="continue"]
