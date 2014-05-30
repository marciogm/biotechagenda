ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  content title: proc{ I18n.t("active_admin.dashboard") } do
    
    panel "Eventos não aprovados" do
      table_for Evento.nao_aprovados do
        column :nome do |evento|
          link_to :nome, [:admin, evento]
        end
        column :email_para_contato
        column :data
        column :aprovado
        column "Ação" do |ap|
          button_to 'Aprovar', ap, method: :post, action: :approve, id: ap, data: { confirm: 'Are you sure?' }
        end
      end
    end

    # Here is an example of a simple dashboard with columns and panels.
    #
    # columns do
    #   column do
    #     panel "Recent Posts" do
    #       ul do
    #         Post.recent(5).map do |post|
    #           li link_to(post.title, admin_post_path(post))
    #         end
    #       end
    #     end
    #   end

    #   column do
    #     panel "Info" do
    #       para "Welcome to ActiveAdmin."
    #     end
    #   end
    # end
  end # content
end
