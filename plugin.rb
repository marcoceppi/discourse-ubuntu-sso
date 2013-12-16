# name: discourse-ubuntu-sso
# about: Ubuntu SSO support for Discourse
# version: 0.2
# authors: Sam Saffron, Marco Ceppi

auth_provider :title => 'with Ubuntu',
              :authenticator => Auth::OpenIdAuthenticator.new('ubuntu','https://login.ubuntu.com', trusted: true),
              :message => 'Authenticating with Ubuntu (make sure pop up blockers are not enbaled)',
              :frame_width => 1000,   # the frame size used for the pop up window, overrides default
              :frame_height => 800

register_css <<CSS

.btn-social.ubuntu {
  background: #dd4814;
}

.btn-social.ubuntu:before {
  font-family: Ubuntu;
  content: "U";
}

CSS
