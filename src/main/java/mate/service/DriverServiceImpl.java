package mate.service;

import java.util.List;
import java.util.Optional;
import mate.dao.DriverDao;
import mate.exception.DataException;
import mate.lib.Inject;
import mate.lib.Service;
import mate.model.Driver;

@Service
public class DriverServiceImpl implements DriverService {
    @Inject
    private DriverDao driverDao;

    @Override
    public Driver create(Driver driver) throws DataException {
        Optional<Driver> optionalDriverByLicenseNumber =
                driverDao.findByLicenseNumber(driver.getLicenseNumber());
        if (optionalDriverByLicenseNumber.isPresent()) {
            throw new DataException("Driver with same license number already exist");
        }
        return driverDao.create(driver);
    }

    @Override
    public Driver get(Long id) throws DataException {
        Optional<Driver> optionalDriver = driverDao.get(id);
        if (optionalDriver.isEmpty()) {
            throw new DataException("Don't exist Driver dy id " + id);
        }
        return optionalDriver.get();
    }

    @Override
    public List<Driver> getAll() {
        return driverDao.getAll();
    }

    @Override
    public Driver update(Driver driver) throws DataException {
        Optional<Driver> optionalDriver =
                driverDao.findByLicenseNumber(driver.getLicenseNumber());
        if (optionalDriver.isPresent() && !optionalDriver.get().getId().equals(driver.getId())) {
            throw new DataException("Driver with same License Number already exist");
        }
        return driverDao.update(driver);
    }

    @Override
    public boolean delete(Long id) {
        return driverDao.delete(id);
    }

    @Override
    public Optional<Driver> findByLogin(String login) {
        return driverDao.findByLogin(login);
    }
}
