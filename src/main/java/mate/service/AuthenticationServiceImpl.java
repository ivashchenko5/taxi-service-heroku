package mate.service;

import java.util.Optional;
import mate.exception.AuthenticationException;
import mate.lib.Inject;
import mate.lib.Service;
import mate.model.Driver;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

@Service
public class AuthenticationServiceImpl implements AuthenticationService {
    private static final Logger logger = LogManager.getLogger(AuthenticationServiceImpl.class);
    @Inject
    private DriverService driverService;

    @Override
    public Driver login(String login, String password) throws AuthenticationException {
        logger.info("Method login was called. Params: login = {}", login);
        Optional<Driver> driverOptional = driverService.findByLogin(login);
        if (driverOptional.isEmpty() || !driverOptional.get().getPassword().equals(password)) {
            throw new AuthenticationException("Login or password was incorrect");
        }
        return driverOptional.get();
    }
}
