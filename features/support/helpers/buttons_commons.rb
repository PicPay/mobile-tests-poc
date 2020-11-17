# frozen_string_literal: true

module CommonsButtons
    def register_btn
      @register_btn ||= find_element(id: 'com.picpay.debug:id/enterV2RegisterButton')
    end
  
    def login_btn
      @login_btn ||= find_element(id: 'com.picpay.debug:id/enterV2LoginButton')
    end

    def enter_login_btn
        @enter_login_btn ||= find_element(id: 'com.picpay.debug:id/btnEnter')
    end

    def pay_btn
        @pay_btn ||= find_element(id: 'com.picpay.debug:id/navigation_pay')
    end

    def principals_search_view
        @principal_search_view ||= find_element(id: 'com.picpay.debug:id/search_view')
    end

    def transaction_value_field
        @transaction_value_field ||= find_element(id: 'com.picpay.debug:id/transactionValue')
    end

    def user_field
        @user_field ||= find_element(id: 'com.picpay.debug:id/etLogin')
    end

    def pass_field
        @pass_field ||= find_element(id: 'com.picpay.debug:id/etPassword')
    end

    def find_by_text(text)
        @find_by_text ||= find_element(xpath: "//*[contains(@text, #{text})]")
    end
end
  World(CommonsButtons)
  