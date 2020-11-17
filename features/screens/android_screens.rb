# frozen_string_literal: true

module Android
    class TransferPeer2Peer
      include CommonsButtons
      attr_reader :transferp2p
  
      def confirm_page
        register_btn
        login_btn
      end
  
      def login(user, password)
        login_btn.click
        
        user_field.click
        user_field.send_keys(user)
        
        pass_field.click
        pass_field.send_keys(password)
        
        enter_login_btn.click
      end

      def validateHomePage
        find_by_text('Sugestões')
        find_by_text('Favoritos')
        find_by_text('Meu saldo')
      end

      def choose_anyone_2_pay
        pay_btn.click
        principals_search_view.click
        
        binding.pry
        user_name = principals_search_view.send_keys('@patric.franca')
        user_result = find_element(id: 'com.picpay.debug:id/text_title')
        
        user_result.click if (name == user_result) == true
    



    end
  end
end
  