module ApplicationHelper
  def navbar_links
    if user_signed_in?
      html = <<-HTML
        <li class="nav-item"><a class="nav-link" href="#">Workouts</a></li>
        <li class="nav-item"><a class="nav-link" href="#contact">Add Workout</a></li>
        <li class="nav-item"><a class="nav-link" href="#about">About</a></li>
      HTML
    else
      html = <<-HTML
        <li class="nav-item"><a class="nav-link" href="#about">About</a></li>
        <li class="nav-item">
          #{ link_to "Login", new_user_session_path, class:"nav-link" }
        </li>
        <li class="nav-item">
          #{ link_to "Sign Up!", new_user_registration_path, class:"nav-link" }
        </li>
      HTML
    end

    html.html_safe
  end
end
