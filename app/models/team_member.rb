class TeamMember < ApplicationRecord
  enum status: { Invited: 1, Active: 2, Deactivated: 3 }
  enum role: { Collaborator: 1, Admin: 2, Contributor: 3 }

  before_save :set_role

  private

  def set_role
    self.role = 'Collaborator'
  end

  # TODO
  # after the description of associations
  # manager true/false - Defaults to True if the user created the team
  # def set_manager
  #   self.manager = true if
  # end
end
