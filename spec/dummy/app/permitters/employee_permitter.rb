class EmployeePermitter < ActionController::Permitter
  permit :id, :a
  permit :c, if: {can?: :lead}
end
